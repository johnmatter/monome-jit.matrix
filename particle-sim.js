// Physics simulation with electromagnetic forces and constraints

class Vector3D {
    constructor(x = 0, y = 0, z = 0) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    add(v) {
        return new Vector3D(
            this.x + v.x,
            this.y + v.y,
            this.z + v.z
        );
    }

    scale(s) {
        return new Vector3D(
            this.x * s,
            this.y * s,
            this.z * s
        );
    }

    dot(v) {
        return this.x * v.x + this.y * v.y + this.z * v.z;
    }

    cross(v) {
        return new Vector3D(
            this.y * v.z - this.z * v.y,
            this.z * v.x - this.x * v.z,
            this.x * v.y - this.y * v.x
        );
    }

    magnitude() {
        return Math.sqrt(this.dot(this));
    }

    normalize() {
        const mag = this.magnitude();
        return mag > 0 ? this.scale(1/mag) : new Vector3D();
    }

    // Project onto x-axis for 1D simulation compatibility
    get1D() {
        return new Vector3D(this.x, 0, 0);
    }
}

class Surface {
    constructor(surfaceFunction = x => 0) {
        this.f = surfaceFunction;  // Function that defines the surface y = f(x)
    }

    getHeight(x) {
        return this.f(x);
    }

    // Get surface slope (df/dx) at point x
    getSlope(x) {
        const h = 0.0001;  // Small step for numerical derivative
        return (this.f(x + h) - this.f(x)) / h;
    }

    // Get surface normal vector at point x (normalized)
    getNormal(x) {
        const slope = this.getSlope(x);
        return new Vector3D(-slope, 1, 0).normalize();
    }

    // Get surface tangent vector at point x (normalized)
    getTangent(x) {
        const slope = this.getSlope(x);
        return new Vector3D(1, slope, 0).normalize();
    }
}

class Particle {
    constructor(mass = 1.0, charge = 0) {
        this.mass = mass;
        this.charge = charge;
        this.position = new Vector3D();
        this.velocity = new Vector3D();
    }

    applyForce(force, dt) {
        const acceleration = force.scale(1.0 / this.mass);
        this.velocity = this.velocity.add(acceleration.scale(dt));
    }

    update(dt) {
        this.position = this.position.add(this.velocity.scale(dt));
    }

    reset() {
        this.position = new Vector3D();
        this.velocity = new Vector3D();
    }
}

class Constraint {
    constructor() {
        // Base constraint class
    }

    // Project position onto constraint
    projectPosition(position) {
        return position;
    }

    // Project velocity onto constraint tangent space
    projectVelocity(position, velocity) {
        return velocity;
    }

    // Get normal vectors at a point
    getNormals(position) {
        return [];
    }
}

class Wire extends Constraint {
    constructor(parameterization = t => new Vector3D(t, 0, 0)) {
        super();
        this.curve = parameterization;  // r(t) = [x(t), y(t), z(t)]
        this.dt = 0.0001;  // Step for numerical derivatives
    }

    // Get tangent vector at parameter t
    getTangent(t) {
        const p1 = this.curve(t - this.dt);
        const p2 = this.curve(t + this.dt);
        return p2.add(p1.scale(-1)).normalize();
    }

    // Get normal and binormal vectors using Frenet-Serret frame
    getNormals(t) {
        const tangent = this.getTangent(t);
        
        // Calculate second derivative for curvature
        const p1 = this.curve(t - this.dt);
        const p2 = this.curve(t);
        const p3 = this.curve(t + this.dt);
        const acceleration = p1.add(p3).add(p2.scale(-2)).scale(1/(this.dt * this.dt));
        
        // Normal = acceleration - (acceleration·tangent)tangent
        const normal = acceleration.add(tangent.scale(-acceleration.dot(tangent))).normalize();
        
        // Binormal = tangent × normal
        const binormal = tangent.cross(normal);
        
        return [normal, binormal];
    }

    // Find parameter t that minimizes distance to point
    findClosestParameter(position) {
        // Simple binary search for minimum distance
        let t = 0;
        let dt = 1.0;
        for (let i = 0; i < 10; i++) {
            const p = this.curve(t);
            const tangent = this.getTangent(t);
            const error = position.add(p.scale(-1)).dot(tangent);
            t += error * dt;
            dt *= 0.5;
        }
        return t;
    }

    projectPosition(position) {
        const t = this.findClosestParameter(position);
        return this.curve(t);
    }

    projectVelocity(position, velocity) {
        const t = this.findClosestParameter(position);
        const tangent = this.getTangent(t);
        return tangent.scale(velocity.dot(tangent));
    }

    // Calculate curvature at parameter t using Frenet-Serret formulas
    getCurvature(t) {
        // Get first derivative (velocity)
        const p1 = this.curve(t - this.dt);
        const p2 = this.curve(t + this.dt);
        const velocity = p2.add(p1.scale(-1)).scale(1/(2*this.dt));
        
        // Get second derivative (acceleration)
        const p0 = this.curve(t);
        const acceleration = p1.add(p2).add(p0.scale(-2)).scale(1/(this.dt * this.dt));
        
        // Curvature = |v × a| / |v|³
        const speed = velocity.magnitude();
        if (speed < 1e-6) return 0;  // Avoid division by zero
        
        return velocity.cross(acceleration).magnitude() / (speed * speed * speed);
    }
}

class Surface2D extends Constraint {
    constructor(heightFunction = (x, z) => 0) {
        super();
        this.f = heightFunction;  // f(x,z) = y
        this.h = 0.0001;  // Step for numerical derivatives
    }

    getHeight(x, z) {
        return this.f(x, z);
    }

    // Get surface normal using partial derivatives
    getNormal(x, z) {
        const fx = (this.f(x + this.h, z) - this.f(x - this.h, z)) / (2 * this.h);
        const fz = (this.f(x, z + this.h) - this.f(x, z - this.h)) / (2 * this.h);
        return new Vector3D(-fx, 1, -fz).normalize();
    }

    getNormals(position) {
        return [this.getNormal(position.x, position.z)];
    }

    projectPosition(position) {
        return new Vector3D(
            position.x,
            this.getHeight(position.x, position.z),
            position.z
        );
    }

    projectVelocity(position, velocity) {
        const normal = this.getNormal(position.x, position.z);
        return velocity.add(normal.scale(-velocity.dot(normal)));
    }

    // Calculate Gaussian curvature at point (x,z)
    getCurvature(x, z) {
        // First derivatives
        const fx = (this.f(x + this.h, z) - this.f(x - this.h, z)) / (2 * this.h);
        const fz = (this.f(x, z + this.h) - this.f(x, z - this.h)) / (2 * this.h);
        
        // Second derivatives
        const fxx = (this.f(x + this.h, z) - 2*this.f(x, z) + this.f(x - this.h, z)) / (this.h * this.h);
        const fzz = (this.f(x, z + this.h) - 2*this.f(x, z) + this.f(x, z - this.h)) / (this.h * this.h);
        const fxz = (this.f(x + this.h, z + this.h) - this.f(x + this.h, z - this.h) 
                    - this.f(x - this.h, z + this.h) + this.f(x - this.h, z - this.h)) / (4 * this.h * this.h);
        
        // Mean curvature = (1 + fx²)fzz - 2fxfzfxz + (1 + fz²)fxx / 2(1 + fx² + fz²)^(3/2)
        const E = 1 + fx * fx;
        const F = fx * fz;
        const G = 1 + fz * fz;
        
        return (E*fzz - 2*F*fxz + G*fxx) / (2 * Math.pow(E + G - 1, 1.5));
    }
}

class ConstrainedParticle extends Particle {
    constructor(mass = 1.0, charge = 0, constraint = new Constraint()) {
        super(mass, charge);
        this.constraint = constraint;
    }

    update(dt) {
        // First update position normally
        super.update(dt);

        // Then project onto constraint
        this.position = this.constraint.projectPosition(this.position);
        this.velocity = this.constraint.projectVelocity(this.position, this.velocity);
    }

    reset() {
        super.reset();
        this.position = this.constraint.projectPosition(this.position);
    }
}

class Force extends Vector3D {
    constructor(x = 0, y = 0, z = 0) {
        super(x, y, z);
    }

    update(particle) {
        // Base force doesn't change
    }
}

class ElectricForce extends Force {
    constructor(field = new Vector3D()) {
        super();
        this.field = field;  // E-field vector
    }

    update(particle) {
        // F = qE
        const force = this.field.scale(particle.charge);
        this.x = force.x;
        this.y = force.y;
        this.z = force.z;
    }
}

class MagneticForce extends Force {
    constructor(field = new Vector3D()) {
        super();
        this.field = field;  // B-field vector
    }

    update(particle) {
        // F = q(v × B)
        const force = particle.velocity.cross(this.field).scale(particle.charge);
        this.x = force.x;
        this.y = force.y;
        this.z = force.z;
    }
}

class LorentzForce extends Force {
    constructor(E = new Vector3D(), B = new Vector3D()) {
        super();
        this.electric = new ElectricForce(E);
        this.magnetic = new MagneticForce(B);
    }

    update(particle) {
        // F = q(E + v × B)
        this.electric.update(particle);
        this.magnetic.update(particle);
        const totalForce = this.electric.add(this.magnetic);
        this.x = totalForce.x;
        this.y = totalForce.y;
        this.z = totalForce.z;
    }
}

class GravitationalForce extends Force {
    constructor(g = new Vector3D(0, -9.81, 0)) {
        super();
        this.g = g;  // Acceleration due to gravity
    }

    update(particle) {
        // F = mg
        const force = this.g.scale(particle.mass);
        this.x = force.x;
        this.y = force.y;
        this.z = force.z;
    }
}

class FrictionForce extends Force {
    constructor(coefficient = 0.1, gravityForce) {
        super();
        this.coefficient = coefficient;
        this.gravityForce = gravityForce;  // Reference to gravity for normal force calculation
    }

    update(particle) {
        if (!(particle instanceof ConstrainedParticle)) {
            const speed = particle.velocity.magnitude();
            if (speed > 0) {
                const direction = particle.velocity.scale(-1/speed);
                // Use gravity force magnitude for normal force
                const normalForceMag = this.gravityForce.magnitude();
                const magnitude = this.coefficient * normalForceMag;
                const force = direction.scale(magnitude);
                this.x = force.x;
                this.y = force.y;
                this.z = force.z;
            } else {
                this.x = this.y = this.z = 0;
            }
            return;
        }

        const speed = particle.velocity.magnitude();
        if (speed < 1e-6) {
            this.x = this.y = this.z = 0;
            return;
        }

        // Get constraint normal at current position
        let normal;
        if (particle.constraint instanceof Wire) {
            const t = particle.constraint.findClosestParameter(particle.position);
            const normals = particle.constraint.getNormals(t);
            normal = normals[0];  // Principal normal
        } else if (particle.constraint instanceof Surface2D) {
            normal = particle.constraint.getNormal(particle.position.x, particle.position.z);
        } else {
            normal = new Vector3D(0, 1, 0);
        }

        // Calculate normal force magnitude from gravity
        const normalForceMag = -this.gravityForce.dot(normal);
        
        // Get velocity direction along constraint
        const direction = particle.velocity.scale(-1/speed);
        
        // Calculate friction force
        const frictionMag = this.coefficient * normalForceMag;
        const force = direction.scale(frictionMag);
        
        this.x = force.x;
        this.y = force.y;
        this.z = force.z;
    }
}

class ConstraintForce extends Force {
    constructor(constraint) {
        super();
        this.constraint = constraint;
    }

    update(particle) {
        if (particle instanceof ConstrainedParticle) {
            // Get constraint normals
            const normals = this.constraint.getNormals(particle.position);
            
            // Get total external force
            const externalForce = particle.externalForce || new Vector3D();
            
            // Calculate constraint forces along each normal
            let totalConstraintForce = new Vector3D();
            
            for (const normal of normals) {
                // Project external force onto normal
                const normalForce = normal.scale(-externalForce.dot(normal));
                
                // Calculate proper centripetal force
                const speed = particle.velocity.magnitude();
                let curvature;
                
                if (this.constraint instanceof Wire) {
                    const t = this.constraint.findClosestParameter(particle.position);
                    curvature = this.constraint.getCurvature(t);
                } else if (this.constraint instanceof Surface2D) {
                    curvature = this.constraint.getCurvature(particle.position.x, particle.position.z);
                } else {
                    curvature = 0;
                }
                
                // F = mv²/R = mv²κ (where κ is curvature)
                const centripetalForce = normal.scale(particle.mass * speed * speed * curvature);
                
                totalConstraintForce = totalConstraintForce.add(normalForce).add(centripetalForce);
            }
            
            this.x = totalConstraintForce.x;
            this.y = totalConstraintForce.y;
            this.z = totalConstraintForce.z;
        }
    }
}

class Simulation {
    constructor(options = {}) {
        this.dt = options.dt || 0.016;
        
        // Create constraint based on type
        if (options.constraintType === "wire") {
            this.constraint = new Wire(t => new Vector3D(
                Math.cos(t),
                t * 0.5,
                Math.sin(t)
            ));
        } else if (options.constraintType === "surface") {
            this.constraint = new Surface2D((x, z) => 0.1 * (x * x + z * z));
        } else {
            this.constraint = new Constraint();
        }
        
        // Create constrained particle
        this.particle = new ConstrainedParticle(
            options.mass || 1.0,
            options.charge || 0,
            this.constraint
        );

        // Initialize forces
        this.gravity = new GravitationalForce(
            new Vector3D(0, options.g || -9.81, 0)
        );
        this.friction = new FrictionForce(
            options.friction || 0.1,
            this.gravity
        );
        this.lorentz = new LorentzForce(
            new Vector3D(options.Ex || 0, options.Ey || 0, options.Ez || 0),
            new Vector3D(options.Bx || 0, options.By || 0, options.Bz || 0)
        );
        this.constraint = new ConstraintForce(this.constraint);
        
        this.limits = {
            min: options.min || -Infinity,
            max: options.max || Infinity
        };
    }

    step() {
        // Update all forces
        this.gravity.update(this.particle);
        this.friction.update(this.particle);
        this.lorentz.update(this.particle);
        
        // Sum all external forces
        const externalForce = this.gravity
            .add(this.friction)
            .add(this.lorentz);
        
        // Store external force for constraint calculations
        this.particle.externalForce = externalForce;
        
        // Update and add constraint force if particle is constrained
        if (this.particle instanceof ConstrainedParticle) {
            this.constraint.update(this.particle);
            const totalForce = externalForce.add(this.constraint);
            this.particle.applyForce(totalForce, this.dt);
        } else {
            this.particle.applyForce(externalForce, this.dt);
        }
        
        // Update position
        this.particle.update(this.dt);

        // Enforce x-axis limits
        if (this.particle.position.x < this.limits.min) {
            this.particle.position.x = this.limits.min;
            this.particle.velocity.x = 0;
        } else if (this.particle.position.x > this.limits.max) {
            this.particle.position.x = this.limits.max;
            this.particle.velocity.x = 0;
        }

        // Return full 3D vectors
        return {
            position: [
                this.particle.position.x,
                this.particle.position.y,
                this.particle.position.z
            ],
            velocity: [
                this.particle.velocity.x,
                this.particle.velocity.y,
                this.particle.velocity.z
            ],
            speed: this.particle.velocity.magnitude()
        };
    }

    applyImpulse(magnitude) {
        const impulseForce = new Force(magnitude);
        this.particle.applyForce(impulseForce, this.dt);
    }

    setEField(Ex, Ey = 0, Ez = 0) {
        this.lorentz.electric.field = new Vector3D(Ex, Ey, Ez);
    }

    setBField(Bx, By = 0, Bz = 0) {
        this.lorentz.magnetic.field = new Vector3D(Bx, By, Bz);
    }

    reset() {
        this.particle.reset();
    }

    setLimits(min, max) {
        this.limits.min = min;
        this.limits.max = max;
    }

    setWire(parameterization) {
        this.constraint = new Wire(parameterization);
        this.particle.constraint = this.constraint;
        this.constraintForce.constraint = this.constraint;
        this.particle.reset();
    }

    setSurface(heightFunction) {
        this.constraint = new Surface2D(heightFunction);
        this.particle.constraint = this.constraint;
        this.constraintForce.constraint = this.constraint;
        this.particle.reset();
    }

    setGravity(gx, gy = -9.81, gz = 0) {
        this.gravity.g = new Vector3D(gx, gy, gz);
    }

    // Predefined wire trajectories
    static WireTrajectories = {
        line: (angle = 0) => {
            // Straight line at an angle from horizontal
            const rad = angle * Math.PI / 180;
            return t => new Vector3D(
                t * Math.cos(rad),
                t * Math.sin(rad),
                0
            );
        },

        circle: (radius = 1, phase = 0) => {
            // Circular path in XZ plane
            return t => new Vector3D(
                radius * Math.cos(t + phase),
                0,
                radius * Math.sin(t + phase)
            );
        },

        helix: (radius = 1, pitch = 0.5, phase = 0) => {
            // Helical path
            return t => new Vector3D(
                radius * Math.cos(t + phase),
                pitch * t,
                radius * Math.sin(t + phase)
            );
        },

        spiral: (a = 0.1, phase = 0) => {
            // Spiral in XZ plane (r = at)
            return t => new Vector3D(
                a * t * Math.cos(t + phase),
                0,
                a * t * Math.sin(t + phase)
            );
        },

        lissajous: (a = 1, b = 1, omega = 2) => {
            // Lissajous curve
            return t => new Vector3D(
                a * Math.cos(t),
                b * Math.sin(omega * t),
                0
            );
        },

        knot: (a = 2, b = 3) => {
            // Torus knot
            return t => new Vector3D(
                Math.cos(a*t) * (2 + Math.cos(b*t)),
                Math.sin(a*t) * (2 + Math.cos(b*t)),
                Math.sin(b*t)
            );
        }
    };
}

// Max/MSP interface
let sim = null;  // Initialize to null explicitly

// Initialize simulation with default parameters
function init(options = {}) {
    sim = new Simulation({
        // No constraint for free particle
        constraintType: null,
        // Charged particle (e.g. electron)
        mass: options.mass || 1.0,
        charge: options.charge || 1.0,  // Non-zero charge
        // No friction in free space
        friction: options.friction || 0.0,
        // Zero gravity to observe pure magnetic effects
        g: options.g || 0,
        // No electric field
        Ex: options.Ex || 0,
        Ey: options.Ey || 0,
        Ez: options.Ez || 0,
        // Magnetic field along z-axis
        Bx: options.Bx || 0,
        By: options.By || 0,
        Bz: options.Bz || 1.0  // B field in z direction
    });
    
    // Give initial velocity in x-y plane plus z component for helical motion
    sim.particle.velocity = new Vector3D(1.0, 1.0, 0.5);
    
    post("Particle simulation initialized: charged particle in magnetic field\n");
    return sim;
}

// Initialize when the script loads
function loadbang() {
    init();
}

// Ensure simulation exists or create it
function ensureSimulation() {
    if (!sim) {
        post("Warning: Simulation not initialized, calling init()\n");
        init();
    }
    return sim;
}

// Handle incoming messages
function anything() {
    const msg = messagename.toLowerCase();
    const args = arrayfromargs(arguments);

    // Ensure simulation exists
    sim = ensureSimulation();

    try {
        switch (msg) {
            case "bang":
                const state = sim.step();
                outlet(0, ["position"].concat(state.position));
                outlet(0, ["velocity"].concat(state.velocity));
                outlet(0, ["speed", state.speed]);
                break;
            
            case "init":
                // Allow initialization with parameters
                init({
                    constraintType: args[0],
                    mass: args[1],
                    charge: args[2],
                    friction: args[3]
                });
                break;

            case "impulse":
                if (args.length > 0) {
                    sim.applyImpulse(args[0]);
                }
                break;
            
            case "reset":
                sim.reset();
                break;
            
            case "limits":
                if (args.length >= 2) {
                    sim.setLimits(args[0], args[1]);
                }
                break;

            case "efield":
                if (args.length >= 3) {
                    sim.setEField(args[0], args[1], args[2]);
                } else if (args.length >= 1) {
                    sim.setEField(args[0]);
                }
                break;

            case "bfield":
                if (args.length >= 3) {
                    sim.setBField(args[0], args[1], args[2]);
                } else if (args.length >= 1) {
                    sim.setBField(args[0]);
                }
                break;
            
            case "constraint":
                if (args.length > 0) {
                    switch(args[0]) {
                        case "line":
                            const angle = args[1] || 0;
                            sim.setWire(Simulation.WireTrajectories.line(angle));
                            break;
                        case "circle":
                            const radius = args[1] || 1;
                            const phase = args[2] || 0;
                            sim.setWire(Simulation.WireTrajectories.circle(radius, phase));
                            break;
                        case "helix":
                            const helixRadius = args[1] || 1;
                            const pitch = args[2] || 0.5;
                            sim.setWire(Simulation.WireTrajectories.helix(helixRadius, pitch));
                            break;
                        case "spiral":
                            const growth = args[1] || 0.1;
                            sim.setWire(Simulation.WireTrajectories.spiral(growth));
                            break;
                        case "lissajous":
                            const a = args[1] || 1;
                            const b = args[2] || 1;
                            const omega = args[3] || 2;
                            sim.setWire(Simulation.WireTrajectories.lissajous(a, b, omega));
                            break;
                        case "knot":
                            const p = args[1] || 2;
                            const q = args[2] || 3;
                            sim.setWire(Simulation.WireTrajectories.knot(p, q));
                            break;
                        case "bowl":
                            sim.setSurface((x, z) => 0.1 * (x * x + z * z));
                            break;
                        case "saddle":
                            sim.setSurface((x, z) => 0.1 * (x * x - z * z));
                            break;
                        default:
                            post("Unknown constraint type:", args[0], "\n");
                    }
                }
                break;
            
            case "gravity":
                if (args.length >= 3) {
                    sim.setGravity(args[0], args[1], args[2]);
                } else if (args.length >= 1) {
                    sim.setGravity(0, args[0], 0);  // Assume y-component if only one value
                }
                break;
            
            default:
                post("Unknown message:", msg, "\n");
        }
    } catch (error) {
        post("Error in particle simulation:", error.message, "\n");
    }
} 