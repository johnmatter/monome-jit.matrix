{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 62.0, 2236.0, 1200.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 387.0, 675.0, 150.0, 20.0 ],
					"text" : "<- audioreactive jit.xfade"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-96",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1645.0, 402.400005996227264, 151.200002253055573, 114.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "TODO: physics simulation for read position. It would be interesting to use something like the RMS power of the waveform as terrain on which a particle slides with some coefficient of friction"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1331.300018906593323, 1854.800016283988953, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[4]",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "vst~[4]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Ghz Tiltshift 3.vst3info",
							"plugindisplayname" : "Ghz Tiltshift 3",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : -1204183660,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1475.VMjLgnaA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DCLxDiKV0zQicUPt3hKl4hKt3BTt3hKt3hKLoGVzMGQt3BSPQiQIoGTtEjKt3BRtT0TMMjUtvjcB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtLjdpU0PIMERHwjKt3hc48zLvXTXlg0UYgWSWoUczX0SnQTZKYGRBgzZzDCV0EkUZQ2XV8DZTUTUFAiPNg1Mo8jY1M0TYETQSU0XTIkSMUUTTEUUR4zX5QkY2TDS3fjTLQmKogjY2TES3fjPLQGRowDdHkFS3gTZLkmY40jLpMDSwXVZHY1MqwDNHIDSz4RdLkmXCwzLpkGS14xTLACUo0TdpkVSn4BdWkmdogjcyHUS2IVZMoGQSwDdhMES1o1TMgmXo0DZtf2U5oWZHY2LBwDZtf2UvnWZHY2Ln0DMLkFSy.UdMomZS4zLPkWS5QTZLglK3cUL5kFR1MiPLglK3ckL5kFR1MiTNYmKS0jcpkVSvP0PMICUo0zcXMUSn4BdWMidogjcyHDSn4BdWQidogjcyHDSn4BdWcmKS8DZtj1R2AUZLMCU40zcPMkS3AUdLkGUC0zLHIDRkUzTLgCRBwDctjFRlcSULgmdogjcyHES5gzPNAiXSwjdpkFS5wTdLACTC4DZtf2U2wzTOglKosjcHIDRkUzPMgCRBwDctjFR4X2PTIWUxj0azDCU5UjQisVPBM0YMczXPkzUYkWUFMlTUECV0kzQYsVTV8DZXYjSokjUYQCTwvzbPMTVqEkUKoGVF0DL5IkSnU0PYMmZC4zLPESSwfjUNcVRS0TZIIDRAEEaicFMwf0ZQYDUmQiUYkTSxLkcUwVX3fjPLglKRIEcMczXmQiQi8VQFM1a3vVXVUEahk2ZwDFcvjFR4MiTLc2LBwDZtHDUmkzUXMWUFM1ZIczT00TLZMUTWgkdUEiX3fDdjwFQWMVcQIiS1gkThACNFMlMtkVVmcWLhs1cnkzcUISX5M2TLwFQWMVcQIiS0fkUXIWSWkkbXIkXvfiQiYCQCwDaDc0X0EkLNUCVVgkbMcUVxgkThACNFMlMDMESrQzUiUWTx3TMXYEVx0zUYIGVRIFL3XzX1PTZLwFQWMVcQIiS0fkUXIWSWkkbXIkXvfiQiYCQ4wDaDc0X0EkLNUCVVgkbMcUVxgkThACNFMlMDMTSrQzUiUWTx3TMXYEVx0zUYIGVRIFL3XzX1fTZIcWUxDldyklSrUjQgkWUFsDaDc0X0EkLNkGVRIFL3XzX13VZYc1cwH1Z2gVR2UkLgo2bC0DaDc0X0EkLNUCVVgkbMcUVxgkThACNFMlMTkVR2UkLgo2bo4DaEYTX4UkQKwFQWMVcQIiSwfkThACNFMlMtkVVmcWLhs1cnkzcUISX5MWdMwFQWMVcQIiS0fkUXIWSWkkbXIkXvfiQiYiYokzcUISX5MWZNwVQFEVdUYzRrQzUiUWTx3DMXIkXvfiQiYiaok0Y2EiXqASaHU2LC8Tc5QkUPcGUUczZpM0TUQTUTslZScTSq8jKt3hKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UX4BQP4hPqcjXm0jLh4BQP4xPt.0Qt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVP77RRC8Vav8lak4Fc9vyKVMEUy.Ea0cVZtMEcgQWY9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Ghz Tiltshift 3",
									"origin" : "Ghz Tiltshift 3.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Ghz Tiltshift 3.vst3info",
										"plugindisplayname" : "Ghz Tiltshift 3",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : -1204183660,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "1475.VMjLgnaA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DCLxDiKV0zQicUPt3hKl4hKt3BTt3hKt3hKLoGVzMGQt3BSPQiQIoGTtEjKt3BRtT0TMMjUtvjcB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtLjdpU0PIMERHwjKt3hc48zLvXTXlg0UYgWSWoUczX0SnQTZKYGRBgzZzDCV0EkUZQ2XV8DZTUTUFAiPNg1Mo8jY1M0TYETQSU0XTIkSMUUTTEUUR4zX5QkY2TDS3fjTLQmKogjY2TES3fjPLQGRowDdHkFS3gTZLkmY40jLpMDSwXVZHY1MqwDNHIDSz4RdLkmXCwzLpkGS14xTLACUo0TdpkVSn4BdWkmdogjcyHUS2IVZMoGQSwDdhMES1o1TMgmXo0DZtf2U5oWZHY2LBwDZtf2UvnWZHY2Ln0DMLkFSy.UdMomZS4zLPkWS5QTZLglK3cUL5kFR1MiPLglK3ckL5kFR1MiTNYmKS0jcpkVSvP0PMICUo0zcXMUSn4BdWMidogjcyHDSn4BdWQidogjcyHDSn4BdWcmKS8DZtj1R2AUZLMCU40zcPMkS3AUdLkGUC0zLHIDRkUzTLgCRBwDctjFRlcSULgmdogjcyHES5gzPNAiXSwjdpkFS5wTdLACTC4DZtf2U2wzTOglKosjcHIDRkUzPMgCRBwDctjFR4X2PTIWUxj0azDCU5UjQisVPBM0YMczXPkzUYkWUFMlTUECV0kzQYsVTV8DZXYjSokjUYQCTwvzbPMTVqEkUKoGVF0DL5IkSnU0PYMmZC4zLPESSwfjUNcVRS0TZIIDRAEEaicFMwf0ZQYDUmQiUYkTSxLkcUwVX3fjPLglKRIEcMczXmQiQi8VQFM1a3vVXVUEahk2ZwDFcvjFR4MiTLc2LBwDZtHDUmkzUXMWUFM1ZIczT00TLZMUTWgkdUEiX3fDdjwFQWMVcQIiS1gkThACNFMlMtkVVmcWLhs1cnkzcUISX5M2TLwFQWMVcQIiS0fkUXIWSWkkbXIkXvfiQiYCQCwDaDc0X0EkLNUCVVgkbMcUVxgkThACNFMlMDMESrQzUiUWTx3TMXYEVx0zUYIGVRIFL3XzX1PTZLwFQWMVcQIiS0fkUXIWSWkkbXIkXvfiQiYCQ4wDaDc0X0EkLNUCVVgkbMcUVxgkThACNFMlMDMTSrQzUiUWTx3TMXYEVx0zUYIGVRIFL3XzX1fTZIcWUxDldyklSrUjQgkWUFsDaDc0X0EkLNkGVRIFL3XzX13VZYc1cwH1Z2gVR2UkLgo2bC0DaDc0X0EkLNUCVVgkbMcUVxgkThACNFMlMTkVR2UkLgo2bo4DaEYTX4UkQKwFQWMVcQIiSwfkThACNFMlMtkVVmcWLhs1cnkzcUISX5MWdMwFQWMVcQIiS0fkUXIWSWkkbXIkXvfiQiYiYokzcUISX5MWZNwVQFEVdUYzRrQzUiUWTx3DMXIkXvfiQiYiaok0Y2EiXqASaHU2LC8Tc5QkUPcGUUczZpM0TUQTUTslZScTSq8jKt3hKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UX4BQP4hPqcjXm0jLh4BQP4xPt.0Qt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVP77RRC8Vav8lak4Fc9vyKVMEUy.Ea0cVZtMEcgQWY9.."
									}
,
									"fileref" : 									{
										"name" : "Ghz Tiltshift 3",
										"filename" : "Ghz Tiltshift 3_20250214.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "31a4b8a9e225af922d0ba854179821e6"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[4]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-182",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1330.300018906593323, 1763.800016283988953, 100.0, 62.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_VST3:/UADx Pultec MEQ-5 EQ", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[3]",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "vst~[3]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "UADx Pultec MEQ-5 EQ.vst3info",
							"plugindisplayname" : "UADx Pultec MEQ-5 EQ",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 129779557,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
							"blob" : "4035.VMjLgn6C...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9HSNzDiK1zjTZojZrQDLEYjXxfCLX4VUsEVb3r1XqkjLh8FNrE1aIAkVKQTLXo2ZrM1Z3.iXxgiQiM0ZV4RPqEiP1kzUYkWUFMVYzXEVyUULT81XtD0ZYYEVvbmQi81ctHFdUEiXqEkLWo1ZrIldqcTUu8lKhgWUwH1ZQIyUvrlQYM0ZFgDZUYESqUTdLkGTwfEamkGV5o1PYkGRFwDMDMUSpETZMcGQFkULLMEVw3xTZQkKGEFLiYkVzgCLhoWQFM1Z3TjXms1QgUWQFkUXQIkVooFUBwjRt3hKt3hKt3hKtXlKt3hKH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtnEaYwVNt3hcLk2Pt3hK18jKt3hKt3hKt3RNC4hKtX2St3hKlsBRt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtkEaYUyPt3RdL8jKt3hKq3hKt3hKt3hKtLySt3hKtrhKt3hK4jlKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKtvTd23hKt3xMC4hKt3hKt3hKlshKt3hK2LjKt3xLOIjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hVrkEa43hK1wTdC4hKtX2St3hKt3hKt3hK4LjKt3hcO4hKtX1JH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtnEaYwVNt3hcLk2Pt3hK18jKt3hKt3hKt3RNC4hKtX2St3hKlsBRt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtkEaYUyPt3RdL8jKt3hKq3hKt3hKt3hKtLySt3hKtrhKt3hK4jlKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKtvTd23hKt3xMC4hKt3hKt3hKlshKt3hK2LjKt3xLOIjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hVrkEa43hK1wTdC4hKtX2St3hKt3hKt3hK4LjKt3hcO4hKtX1JH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtnEaYwVNt3hcLk2Pt3hK18jKt3hKt3hKt3RNC4hKtX2St3hKlsBRt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtkEaYUyPt3RdL8jKt3hKq3hKt3hKt3hKtLySt3hKtrhKt3hK4jlKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKtvTd23hKt3xMC4hKt3hKt3hKlshKt3hK2LjKt3xLOIjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hVrkEa43hK1wTdC4hKtX2St3hKt3hKt3hK4LjKt3hcO4hKtX1JH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySugCTXIWTWkEdzXEV5UULWkWTWgkdUECYoolQA81ctHFdUEiXqEkLWo1ZrIldq0VTuMmKhgWUwH1ZQIyUzUjUgsVSUo0QPQUVrUjUiIWTWokRtzlXq0zUYoGNUM1aQECUuEDZXsVQSk0cLkGSp0DaYMCSF0DMPECSnEzTNcGUCkkcXMESmEEaMkGQr0jcpYTQ1cmUi01ZrEVYMczXmE0UYUVPWgEM2ESXmEULVolZwfza2olKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKt3hKt3hKt3hKt3hKt3hKt3hKlshKt3hK2LjKt3xLO8FNtHFd3DCVq0jLh8FMwjUYvDSXpUULT8VTPUUPQoGSuUzch8VTVkUZmYEVuQSLWsFMVgEZ2YUVpkEUZQETVgkL3rlX0U0QisVTwbUdqYTVq0jQZc1ZrElQA4hKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UX4BQP4RUEQDRBs1QhcVSxHlKDAkKC4hKH4hKt3hKt3hKt3FUUMTUDQEdqw1XmE0UYQTQFM1YAwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "UADx Pultec MEQ-5 EQ",
									"origin" : "UADx Pultec MEQ-5 EQ.vst3info",
									"type" : "VST3",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "UADx Pultec MEQ-5 EQ.vst3info",
										"plugindisplayname" : "UADx Pultec MEQ-5 EQ",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 129779557,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
										"blob" : "4035.VMjLgn6C...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9HSNzDiK1zjTZojZrQDLEYjXxfCLX4VUsEVb3r1XqkjLh8FNrE1aIAkVKQTLXo2ZrM1Z3.iXxgiQiM0ZV4RPqEiP1kzUYkWUFMVYzXEVyUULT81XtD0ZYYEVvbmQi81ctHFdUEiXqEkLWo1ZrIldqcTUu8lKhgWUwH1ZQIyUvrlQYM0ZFgDZUYESqUTdLkGTwfEamkGV5o1PYkGRFwDMDMUSpETZMcGQFkULLMEVw3xTZQkKGEFLiYkVzgCLhoWQFM1Z3TjXms1QgUWQFkUXQIkVooFUBwjRt3hKt3hKt3hKtXlKt3hKH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtnEaYwVNt3hcLk2Pt3hK18jKt3hKt3hKt3RNC4hKtX2St3hKlsBRt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtkEaYUyPt3RdL8jKt3hKq3hKt3hKt3hKtLySt3hKtrhKt3hK4jlKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKtvTd23hKt3xMC4hKt3hKt3hKlshKt3hK2LjKt3xLOIjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hVrkEa43hK1wTdC4hKtX2St3hKt3hKt3hK4LjKt3hcO4hKtX1JH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtnEaYwVNt3hcLk2Pt3hK18jKt3hKt3hKt3RNC4hKtX2St3hKlsBRt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtkEaYUyPt3RdL8jKt3hKq3hKt3hKt3hKtLySt3hKtrhKt3hK4jlKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKtvTd23hKt3xMC4hKt3hKt3hKlshKt3hK2LjKt3xLOIjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hVrkEa43hK1wTdC4hKtX2St3hKt3hKt3hK4LjKt3hcO4hKtX1JH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtnEaYwVNt3hcLk2Pt3hK18jKt3hKt3hKt3RNC4hKtX2St3hKlsBRt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtkEaYUyPt3RdL8jKt3hKq3hKt3hKt3hKtLySt3hKtrhKt3hK4jlKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKtvTd23hKt3xMC4hKt3hKt3hKlshKt3hK2LjKt3xLOIjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hVrkEa43hK1wTdC4hKtX2St3hKt3hKt3hK4LjKt3hcO4hKtX1JH4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3VVrkUMC4hK4wzSt3hKtrhKt3hKt3hKt3xLO4hKt3xJt3hKtjSZt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKlwVVr81St3BS4ciKt3hK2LjKt3hKt3hKtX1Jt3hKtbyPt3hKy7jPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKZwVVrkiKtXGS4MjKt3hcO4hKt3hKt3hKtjyPt3hK18jKt3hYqfjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3haYwVV0LjKtjGSO4hKt3xJt3hKt3hKt3hKy7jKt3hKq3hKt3RNo4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXFaYw1aO4hKLk2Mt3hKtbyPt3hKt3hKt3hYq3hKt3xMC4hKtLySugCTXIWTWkEdzXEV5UULWkWTWgkdUECYoolQA81ctHFdUEiXqEkLWo1ZrIldq0VTuMmKhgWUwH1ZQIyUzUjUgsVSUo0QPQUVrUjUiIWTWokRtzlXq0zUYoGNUM1aQECUuEDZXsVQSk0cLkGSp0DaYMCSF0DMPECSnEzTNcGUCkkcXMESmEEaMkGQr0jcpYTQ1cmUi01ZrEVYMczXmE0UYUVPWgEM2ESXmEULVolZwfza2olKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hYrkEau8jKt3hKt3hKt3hKt3hKt3hKt3hKlshKt3hK2LjKt3xLO8FNtHFd3DCVq0jLh8FMwjUYvDSXpUULT8VTPUUPQoGSuUzch8VTVkUZmYEVuQSLWsFMVgEZ2YUVpkEUZQETVgkL3rlX0U0QisVTwbUdqYTVq0jQZc1ZrElQA4hKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UX4BQP4RUEQDRBs1QhcVSxHlKDAkKC4hKH4hKt3hKt3hKt3FUUMTUDQEdqw1XmE0UYQTQFM1YAwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
									}
,
									"fileref" : 									{
										"name" : "UADx Pultec MEQ-5 EQ",
										"filename" : "UADx Pultec MEQ-5 EQ.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "e44561079f36273657c035b78c1e0237"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ \"C74_VST3:/UADx Pultec MEQ-5 EQ\"",
					"varname" : "vst~[3]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"attr" : "amp",
					"attrfilter" : [ "amp" ],
					"displaymode" : 2,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-176",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 725.0, 421.0, 150.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1330.300018906593323, 1891.800016283988953, 177.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_VST3:/Grand Finale", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[2]",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "vst~[2]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Grand Finale.vst3info",
							"plugindisplayname" : "Grand Finale",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : -1794783369,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
							"blob" : "1094.VMjLgzCA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9byL13hUMczXWEjKt3hYt3hKt.kKt3hKt3BS5gEcyQjKtfjK3YTR5AkaA4hKtfjYUQ2XFQlKH4hKA4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKB4Rd2UyPv7zLV8DUqbyJIcDNC4hKt3hKt3hKt3hKt3hKt3hKt3xLO4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hK1MTNmI2S0P1c0kiY1TzJ0LDNBYjbOsTN0IWNt3hKt3BT2fEV38zcocVRq3hKt3hK1MzTU81SWITcykiKt3hKt3hKt3xLO4hKtX1JHcTbgc2TN4jSj8TLD8FY43hKt3RNC4hKtLySyjDMzgyMNUFN0jWU0n0YO4TYpkzJl8jK3MSdPQ2R38jKt3hYq3hKt3RNoQGbDU1SyTTRxkibgMCV0LzcnEmZOgWLX4TN2bCLKQyPt3hKy7jKt3hYqnGcSQiL4giVRA2SqAUMOsBVtn1Zyj2aIQkZOUlcTIWNt3hKtjyPt3hKy7jZ4cUc3XVRHUGL4Q2Yo81SGY0RzfiYTMVNzjla0n0aO4hKtX1Jt3hKtjSZKsxRA8jS5M1M3fDTFIENS8TUrg2STQlPUkCVXgyM2jmZvoUYO4FMWQVNtDCQBUSd4cmcS8jd1DWRqvzJGcGcSESUIs1S0AUV0kCV3kCM0LDbDIDZOMTYVISNX8DbAUSd14lV48TQOYzXqfzbisBNoY0RIozS1gTN0fiYMoTQ3LjKt3xLOAUS0bzJlYUchcyPyYkT58zXAsxPqfEYwI2MSwDd1Q2S4DiXwkiYWISP5M0YlczYOITQ3gCNtEEctPSdskFcw8TTzPFT431TUA2MS4hKt3hKA4hKt3BQt3hKt3hKt3hKtDjKt3hKH4hKt3hKt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtfjaEgWZXEkZlYEZt3hKtrhKt3hK2LjKt3hcO4hKt3xJt3hKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UX4BQP4hPqcjXm0jLh4BQP4xPt.0Qt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVP77RRC8Vav8lak4Fc9vyKVMEUy.Ea0cVZtMEcgQWY9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Grand Finale",
									"origin" : "Grand Finale.vst3info",
									"type" : "VST3",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Grand Finale.vst3info",
										"plugindisplayname" : "Grand Finale",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : -1794783369,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
										"blob" : "1094.VMjLgzCA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9byL13hUMczXWEjKt3hYt3hKt.kKt3hKt3BS5gEcyQjKtfjK3YTR5AkaA4hKtfjYUQ2XFQlKH4hKA4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKB4Rd2UyPv7zLV8DUqbyJIcDNC4hKt3hKt3hKt3hKt3hKt3hKt3xLO4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hK1MTNmI2S0P1c0kiY1TzJ0LDNBYjbOsTN0IWNt3hKt3BT2fEV38zcocVRq3hKt3hK1MzTU81SWITcykiKt3hKt3hKt3xLO4hKtX1JHcTbgc2TN4jSj8TLD8FY43hKt3RNC4hKtLySyjDMzgyMNUFN0jWU0n0YO4TYpkzJl8jK3MSdPQ2R38jKt3hYq3hKt3RNoQGbDU1SyTTRxkibgMCV0LzcnEmZOgWLX4TN2bCLKQyPt3hKy7jKt3hYqnGcSQiL4giVRA2SqAUMOsBVtn1Zyj2aIQkZOUlcTIWNt3hKtjyPt3hKy7jZ4cUc3XVRHUGL4Q2Yo81SGY0RzfiYTMVNzjla0n0aO4hKtX1Jt3hKtjSZKsxRA8jS5M1M3fDTFIENS8TUrg2STQlPUkCVXgyM2jmZvoUYO4FMWQVNtDCQBUSd4cmcS8jd1DWRqvzJGcGcSESUIs1S0AUV0kCV3kCM0LDbDIDZOMTYVISNX8DbAUSd14lV48TQOYzXqfzbisBNoY0RIozS1gTN0fiYMoTQ3LjKt3xLOAUS0bzJlYUchcyPyYkT58zXAsxPqfEYwI2MSwDd1Q2S4DiXwkiYWISP5M0YlczYOITQ3gCNtEEctPSdskFcw8TTzPFT431TUA2MS4hKt3hKA4hKt3BQt3hKt3hKt3hKtDjKt3hKH4hKt3hKt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtfjaEgWZXEkZlYEZt3hKtrhKt3hK2LjKt3hcO4hKt3xJt3hKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UX4BQP4hPqcjXm0jLh4BQP4xPt.0Qt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVP77RRC8Vav8lak4Fc9vyKVMEUy.Ea0cVZtMEcgQWY9.."
									}
,
									"fileref" : 									{
										"name" : "Grand Finale",
										"filename" : "Grand Finale_20250124.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "da57a41fbb8e66f622ba27e74fef8f2a"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ \"C74_VST3:/Grand Finale\"",
					"varname" : "vst~[2]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 1330.300018906593323, 1605.800016283988953, 68.0, 22.0 ],
					"text" : "mc.stereo~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-156",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1807.300018906593323, 1514.800016283988953, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1807.300018906593323, 1460.800016283988953, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[3]",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[3]"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-158",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1691.300018906593323, 1514.800016283988953, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1691.300018906593323, 1460.800016283988953, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[2]",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-160",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1575.300018906593323, 1514.800016283988953, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1575.300018906593323, 1460.800016283988953, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[1]",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-162",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1458.300018906593323, 1514.800016283988953, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1458.300018906593323, 1460.800016283988953, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 1458.300018906593323, 1545.800016283988953, 368.0, 22.0 ],
					"text" : "mc.pack~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1331.300018906593323, 1941.800016283988953, 136.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[4]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.gain~[4]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1331.300018906593323, 2011.800016283988953, 48.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1330.300018906593323, 1682.800016283988953, 74.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[11]",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Ghz Megaverb 3.vst3info",
							"plugindisplayname" : "Ghz Megaverb 3",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 1230296344,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "2232.VMjLg7JB...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DSM3jiKV0zQicUPt3hKl4hKt3BTt3hKt3hKLoGVzMGQt3BVPcjQIoGTtEjKt3BRPMkUMMjUtvjcB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtTDUtU0PIMERtTkKt3hc48zLvXTXlg0UYgWSWoUczX0SnQTZKYGRBgzZzDCV0EkUZQ2XV8DZTUTUFAiPNg1Mo8jY1M0TYETQSU0XTIkSMUUTTEUUR4zX5QkY2TDS3fjTLQmKogjY2TES3fjPLQGQo0DLDkVS2AUdMACU4wDMHMDSxPUZHY1MqwDNHIDSzgTZLYmYo0jLTMES5g0TLYGRS4jcTkFRlcCLLgCRBwDctjFRlcSQMgCRBwDctjFRlcSUMgCRBwDcLMDS14xPLYmKSwzcpkFS1oVZLQCRBgTYYM0Sn4RZKECVo0TLXkVSwXVZMACSC0zLlMESwfjPHU1XS8DZtj1R5gTdLkGSS0DMLMkSw.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."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Ghz Megaverb 3",
									"origin" : "Ghz Megaverb 3.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Ghz Megaverb 3.vst3info",
										"plugindisplayname" : "Ghz Megaverb 3",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 1230296344,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "2232.VMjLg7JB...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DSM3jiKV0zQicUPt3hKl4hKt3BTt3hKt3hKLoGVzMGQt3BVPcjQIoGTtEjKt3BRPMkUMMjUtvjcB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtTDUtU0PIMERtTkKt3hc48zLvXTXlg0UYgWSWoUczX0SnQTZKYGRBgzZzDCV0EkUZQ2XV8DZTUTUFAiPNg1Mo8jY1M0TYETQSU0XTIkSMUUTTEUUR4zX5QkY2TDS3fjTLQmKogjY2TES3fjPLQGQo0DLDkVS2AUdMACU4wDMHMDSxPUZHY1MqwDNHIDSzgTZLYmYo0jLTMES5g0TLYGRS4jcTkFRlcCLLgCRBwDctjFRlcSQMgCRBwDctjFRlcSUMgCRBwDcLMDS14xPLYmKSwzcpkFS1oVZLQCRBgTYYM0Sn4RZKECVo0TLXkVSwXVZMACSC0zLlMESwfjPHU1XS8DZtj1R5gTdLkGSS0DMLMkSw.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."
									}
,
									"fileref" : 									{
										"name" : "Ghz Megaverb 3",
										"filename" : "Ghz Megaverb 3.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "33e28fbce156c39dde4f8e7d920c3525"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1330.300018906593323, 1725.800016283988953, 74.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Ghz Tupe 3.vst3info",
							"plugindisplayname" : "Ghz Tupe 3",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : -1591071029,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "2748.VMjLgLqB...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DSN2XiKV0zQicUPt3hKl4hKt3BTt3hKt3hKLoGVzMGQt3hXt3lQIoGTtEjKt3BRtTETMMjUtvjcB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtbjYlU0PIMERCElKt3hc48zLvXTXlg0UYgWSWoUczX0SnQTZKYGRBgzZzDCV0EkUZQ2XV8DZTUTUFAiPNg1Mo8jY1M0TYETQSU0XTIkSMUUTTEUUR4zX5QkY2TDS3fjTLQmKogjY2TES3fjPLQGUowjdpMkSznVdMECQS0zLDMTS3QTZHY1MqwDNHIESz4RZHY1MvvDNHIDSz4xTNEiX40jdDMkS1gUZMoGRS4zcLMjSn4BdWomdogjcyHUSn4BdWAidogjcyHDSn4BdWEidogjcyHDSn4BdWIidogjcyHUSn4BdWMidogjcyHDSn4BdWQidogjcyHDSn4BdWcmKS8DZtj1R1gjPHUVQSwDNHIDSzAUZMMiXS0DZtf2U2gzTOglKosjcHIDRkUTdLgCRBwDctjFRlcSULomdogjcyfVSwfUZMECVo0zLXMUS4A0PNMCQo0DZtf2U2Q0TOglKosjLTkFRlcSULEidogzcyHDSn4BdWcmXS8DZDk1R1gjPHUVQC4DNHIESz4RZHY1MUwDM5kFR2MiPLglK3cEdtL0SnQTZKYGRBgTYIMES3fjPLQmKogjY2rFS3oWZHY2LBwDZtf2U3wzTOglKosDLHIDRkkzPMgCRBwDcLkFS34xPMICRo0TdLMjS4YVZMACTogjY2rFSvnWZHY2LB0jcPMESwfUZMEiYo0DLLMTSyXVZLglK3cEdXM0Sn4RZKICUogjY2rFSxnWZHY2LB4jLhMjS3gzPNICUS4jLXMUSwfzTMglK3cEdlM0Sn4RZKECUo0DdTkFRlcyZLQidogjcyfFSvfjPHUVSCwDNHIDSz4RZHY1Mvvzc5kFR1MiPMAiY4wTdLkGS5wTZLEiXC0jdtLjSn4BdWkGRS8DZtj1R4wTdLkGS4wTdPkGS3gUdMoGTCwzLHIDRk0TdLgCRBwDcTkFRlcCLLomdogjcyfFSwPUZLQCS4wDdpMkSv.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."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Ghz Tupe 3",
									"origin" : "Ghz Tupe 3.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Ghz Tupe 3.vst3info",
										"plugindisplayname" : "Ghz Tupe 3",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : -1591071029,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "2748.VMjLgLqB...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DSN2XiKV0zQicUPt3hKl4hKt3BTt3hKt3hKLoGVzMGQt3hXt3lQIoGTtEjKt3BRtTETMMjUtvjcB4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtbjYlU0PIMERCElKt3hc48zLvXTXlg0UYgWSWoUczX0SnQTZKYGRBgzZzDCV0EkUZQ2XV8DZTUTUFAiPNg1Mo8jY1M0TYETQSU0XTIkSMUUTTEUUR4zX5QkY2TDS3fjTLQmKogjY2TES3fjPLQGUowjdpMkSznVdMECQS0zLDMTS3QTZHY1MqwDNHIESz4RZHY1MvvDNHIDSz4xTNEiX40jdDMkS1gUZMoGRS4zcLMjSn4BdWomdogjcyHUSn4BdWAidogjcyHDSn4BdWEidogjcyHDSn4BdWIidogjcyHUSn4BdWMidogjcyHDSn4BdWQidogjcyHDSn4BdWcmKS8DZtj1R1gjPHUVQSwDNHIDSzAUZMMiXS0DZtf2U2gzTOglKosjcHIDRkUTdLgCRBwDctjFRlcSULomdogjcyfVSwfUZMECVo0zLXMUS4A0PNMCQo0DZtf2U2Q0TOglKosjLTkFRlcSULEidogzcyHDSn4BdWcmXS8DZDk1R1gjPHUVQC4DNHIESz4RZHY1MUwDM5kFR2MiPLglK3cEdtL0SnQTZKYGRBgTYIMES3fjPLQmKogjY2rFS3oWZHY2LBwDZtf2U3wzTOglKosDLHIDRkkzPMgCRBwDcLkFS34xPMICRo0TdLMjS4YVZMACTogjY2rFSvnWZHY2LB0jcPMESwfUZMEiYo0DLLMTSyXVZLglK3cEdXM0Sn4RZKICUogjY2rFSxnWZHY2LB4jLhMjS3gzPNICUS4jLXMUSwfzTMglK3cEdlM0Sn4RZKECUo0DdTkFRlcyZLQidogjcyfFSvfjPHUVSCwDNHIDSz4RZHY1Mvvzc5kFR1MiPMAiY4wTdLkGS5wTZLEiXC0jdtLjSn4BdWkGRS8DZtj1R4wTdLkGS4wTdPkGS3gUdMoGTCwzLHIDRk0TdLgCRBwDcTkFRlcCLLomdogjcyfFSwPUZLQCS4wDdpMkSv.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."
									}
,
									"fileref" : 									{
										"name" : "Ghz Tupe 3",
										"filename" : "Ghz Tupe 3.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "3719ab42f5c9b2141f4d4e6b9d92329f"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1330.300018906593323, 1644.800016283988953, 74.0, 22.0 ],
					"text" : "mc.unpack~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1152.000017166137695, 612.80000913143158, 63.0, 22.0 ],
					"text" : "r arc-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 971.0, 312.0, 65.0, 22.0 ],
					"text" : "s arc-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 971.0, 210.0, 84.0, 84.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1432.300018906593323, 1418.800016283988953, 135.0, 22.0 ],
					"text" : "mc.send~ enc-signals 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 1625.300018906593323, 1681.800016283988953, 164.0, 22.0 ],
					"text" : "mc.mixdown~ 2 @autogain 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 1330.300018906593323, 1391.800016283988953, 70.0, 22.0 ],
					"text" : "mc.pack~ 4"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-81",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "scrub_voice.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1406.300018906593323, 1220.800016283988953, 189.0, 122.0 ],
					"varname" : "scrub_voice[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-78",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "scrub_voice.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1204.300018906593323, 1220.800016283988953, 189.0, 122.0 ],
					"varname" : "scrub_voice[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-77",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "scrub_voice.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1406.300018906593323, 1092.800016283988953, 189.0, 122.0 ],
					"varname" : "scrub_voice[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-64",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "scrub_voice.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1204.300018906593323, 1092.800016283988953, 189.0, 122.0 ],
					"varname" : "scrub_voice",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-201",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "signature.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 20.0, 926.40001380443573, 622.0, 207.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 478.0, 502.0, 84.0, 35.0 ],
					"text" : "mc.receive~ enc-signals 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1152.000017166137695, 640.000009536743164, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 279.0, 13.0, 150.0, 87.0 ],
					"text" : "not sure why we need a [del] here but it needs about a second delay on my m2 mbp. Otherwise, the subpatchers after the [jit.scissors] behave funny"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 348.0, 137.0, 22.0 ],
					"text" : "loadmess noise.checker"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.9, 0.9, 0.9, 1.0 ],
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 604.0, 210.0, 107.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"text" : "r #0_redraw_clock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 188.0, 526.0, 41.0, 20.0 ],
					"text" : "max"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 554.0, 41.0, 20.0 ],
					"text" : "mean"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 578.0, 41.0, 20.0 ],
					"text" : "min"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-191",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 888.0, 129.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-189",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 836.0, 129.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-188",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 784.0, 129.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-186",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 732.0, 129.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 865.600012898445129, 726.600011110305786, 155.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "sprintf /jojjjajjr/arc/enc%i %f"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 732.0, 103.0, 227.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "OSC-route /enc0 /enc1 /enc2 /enc3"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 732.0, 73.0, 89.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "OSC-route /arc"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 732.0, 45.0, 106.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "OSC-route /jojjjajjr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 961.600014328956604, 621.000009536743164, 150.0, 60.0 ],
					"text" : "this sends each encoder's OSC value whenever one of them changes. I should fix this"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 865.600012898445129, 694.600010633468628, 37.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "zl.rev"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 865.600012898445129, 665.000010192394257, 47.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "pack f i"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 865.600012898445129, 602.600009262561798, 29.5, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "t f b"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 865.600012898445129, 541.000008344650269, 68.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "t l 0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 893.600013315677643, 633.000009715557098, 61.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 865.600012898445129, 570.60000878572464, 47.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "zl.iter 1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 732.0, 15.0, 97.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "udpreceive 9000"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 865.600012898445129, 757.000011563301086, 135.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "udpsend localhost 9000"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 671.200010001659393, 968.800014436244965, 47.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.iter 2"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 893.600013315677643, 1050.400015652179718, 60.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.change"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 819.20001220703125, 1050.400015652179718, 60.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.change"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 745.600011110305786, 1050.400015652179718, 60.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.change"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 671.200010001659393, 1008.800015032291412, 315.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "routepass 16 17 18 19"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 671.200010001659393, 1050.400015652179718, 60.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.change"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 865.600012898445129, 478.60000741481781, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "r midi_f"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 671.200010001659393, 926.40001380443573, 37.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.rev"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1198.400017857551575, 1017.600015163421631, 49.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "s midi_i"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1198.400017857551575, 987.200014710426331, 57.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "vexpr $i1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 671.200010001659393, 760.800011336803436, 60.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.change"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 695.200010359287262, 842.40001255273819, 29.5, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 478.0, 43.0, 175.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "unpack i i i i"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 13.0, 127.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "loadmess 16 17 18 19"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 103.0, 175.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "pak i i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 634.0, 73.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 582.0, 73.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 530.0, 73.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 478.0, 73.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 478.0, 133.0, 118.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "s midi_cc_out_nums"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.200010359287262, 802.400011956691742, 116.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "r midi_cc_out_nums"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 671.200010001659393, 884.800013184547424, 53.5, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "zl.lace"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 797.600011885166168, 1092.800016283988953, 82.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 797.600011885166168, 1134.400016903877258, 47.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 212.0, 47.0, 55.0, 22.0 ],
					"text" : "del 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 478.0, 582.0, 84.0, 22.0 ],
					"text" : "mc.unpack~ 4"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-207",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 732.0, 456.0, 42.0, 42.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 604.0, 544.0, 147.0, 22.0 ],
					"text" : "jit.* @val 0.5"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 865.600012898445129, 510.600007891654968, 103.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "scale 0. 127. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 240.0, 69.0, 22.0 ],
									"text" : "expr 1 - $f1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 50.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 171.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 160.0, 346.0, 29.5, 22.0 ],
									"text" : "jit.+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-155",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 171.0, 39.0, 22.0 ],
									"text" : "dbtoa"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"markers" : [ -60, -48, -36, -24, -12, -6, 0, 6 ],
									"markersused" : 8,
									"maxclass" : "levelmeter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 100.0, 128.0, 64.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 202.0, 97.0, 22.0 ],
									"text" : "scale 0. 0.2 0. 1."
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-159",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 321.0, 228.0, 110.0, 23.0 ],
									"size" : 1.0
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-191",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-192",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 171.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-193",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 321.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-194",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 428.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 1 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 1 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-194", 0 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-159", 0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"order" : 1,
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 1 ],
									"order" : 0,
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"source" : [ "obj-193", 0 ]
								}

							}
 ],
						"originid" : "pat-3902"
					}
,
					"patching_rect" : [ 20.0, 674.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 240.0, 69.0, 22.0 ],
									"text" : "expr 1 - $f1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-140",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 50.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 171.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 160.0, 346.0, 29.5, 22.0 ],
									"text" : "jit.+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 171.0, 39.0, 22.0 ],
									"text" : "dbtoa"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-145",
									"markers" : [ -60, -48, -36, -24, -12, -6, 0, 6 ],
									"markersused" : 8,
									"maxclass" : "levelmeter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 100.0, 128.0, 64.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 202.0, 97.0, 22.0 ],
									"text" : "scale 0. 0.2 0. 1."
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-150",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 321.0, 228.0, 110.0, 23.0 ],
									"size" : 1.0
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-186",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-187",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 171.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-188",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 321.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-189",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 428.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 1 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 1 ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-189", 0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"source" : [ "obj-145", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"order" : 1,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 1 ],
									"order" : 0,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"source" : [ "obj-188", 0 ]
								}

							}
 ],
						"originid" : "pat-3904"
					}
,
					"patching_rect" : [ 124.0, 674.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 240.0, 69.0, 22.0 ],
									"text" : "expr 1 - $f1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 50.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 171.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 160.0, 346.0, 29.5, 22.0 ],
									"text" : "jit.+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 171.0, 39.0, 22.0 ],
									"text" : "dbtoa"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"markers" : [ -60, -48, -36, -24, -12, -6, 0, 6 ],
									"markersused" : 8,
									"maxclass" : "levelmeter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 100.0, 128.0, 64.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 202.0, 97.0, 22.0 ],
									"text" : "scale 0. 0.2 0. 1."
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-135",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 321.0, 228.0, 110.0, 23.0 ],
									"size" : 1.0
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-181",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-182",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 171.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-183",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 321.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-184",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 428.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 1 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 1 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"order" : 1,
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 1 ],
									"order" : 0,
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-183", 0 ]
								}

							}
 ],
						"originid" : "pat-3906"
					}
,
					"patching_rect" : [ 228.0, 674.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 240.0, 69.0, 22.0 ],
									"text" : "expr 1 - $f1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 50.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 171.0, 284.0, 69.0, 22.0 ],
									"text" : "jit.* @val 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 160.0, 346.0, 29.5, 22.0 ],
									"text" : "jit.+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.5, 171.0, 39.0, 22.0 ],
									"text" : "dbtoa"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"markers" : [ -60, -48, -36, -24, -12, -6, 0, 6 ],
									"markersused" : 8,
									"maxclass" : "levelmeter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.5, 100.0, 128.0, 64.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.5, 202.0, 97.0, 22.0 ],
									"text" : "scale 0. 0.2 0. 1."
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-81",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 320.5, 228.0, 110.0, 23.0 ],
									"size" : 1.0
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-168",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-169",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 171.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-170",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 320.5, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-171",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 428.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 1 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 1 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-168", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"order" : 1,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 1 ],
									"order" : 0,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-98", 0 ]
								}

							}
 ],
						"originid" : "pat-3908"
					}
,
					"patching_rect" : [ 336.0, 674.0, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "" ],
					"patching_rect" : [ 604.0, 582.0, 115.0, 22.0 ],
					"text" : "jit.scissors @rows 4"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.463, 0.733, 0.663, 1.0 ],
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 671.200010001659393, 718.400010704994202, 47.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.urgentmessage"
						}

					}
,
					"text" : "r midi_i"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.231373, 0.560784, 1.0, 1.0 ],
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1132.8000168800354, 987.200014710426331, 50.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.mute_on"
						}

					}
,
					"text" : "s midi_f"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-43",
					"maxclass" : "flonum",
					"maximum" : 127.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1559.200023233890533, 682.400010168552399, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-41",
					"maxclass" : "flonum",
					"maximum" : 127.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1464.000021815299988, 682.400010168552399, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-39",
					"maxclass" : "flonum",
					"maximum" : 127.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1365.600020349025726, 682.400010168552399, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-34",
					"maxclass" : "flonum",
					"maximum" : 127.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1268.800018906593323, 682.400010168552399, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 1268.800018906593323, 987.200014710426331, 307.0, 22.0 ],
					"text" : "unpack i i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1268.800018906593323, 957.600014269351959, 107.0, 22.0 ],
					"text" : "scale 0 127 24 -25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1268.800018906593323, 926.40001380443573, 309.25, 22.0 ],
					"text" : "pak f f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.0, 269.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.0, 269.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1577.600023508071899, 710.400010585784912, 56.0, 35.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1482.400022089481354, 712.00001060962677, 56.0, 35.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1384.000020623207092, 712.00001060962677, 56.0, 35.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1288.800019204616547, 712.00001060962677, 56.0, 35.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1585.600023627281189, 151.200002253055573, 24.0, 20.0 ],
					"text" : "L",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1585.600023627281189, 135.200002014636993, 24.0, 20.0 ],
					"text" : "M",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1585.600023627281189, 121.600001811981201, 24.0, 20.0 ],
					"text" : "H",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1565.600023329257965, 91.200001358985901, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 212.0, 13.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1565.600023329257965, 271.200004041194916, 22.0, 22.0 ],
					"text" : "t 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1577.600023508071899, 239.200003564357758, 22.0, 22.0 ],
					"text" : "t 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1588.000023663043976, 209.600003123283386, 35.0, 22.0 ],
					"text" : "t 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 1565.600023329257965, 179.200002670288086, 54.0, 22.0 ],
					"text" : "sel 0 1 2"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0 ],
					"id" : "obj-102",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1565.600023329257965, 121.600001811981201, 18.0, 50.0 ],
					"size" : 3,
					"value" : 0
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-101",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.0, 526.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-99",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 124.0, 550.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-97",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 112.0, 578.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-95",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1588.000023663043976, 301.600004494190216, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1578.400023519992828, 374.400005578994751, 29.5, 22.0 ],
					"text" : "/ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1484.000022113323212, 374.400005578994751, 29.5, 22.0 ],
					"text" : "/ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1384.000020623207092, 374.400005578994751, 29.5, 22.0 ],
					"text" : "/ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1288.800019204616547, 374.400005578994751, 29.5, 22.0 ],
					"text" : "/ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 423.0, 205.0, 22.0 ],
					"text" : "jit.expr 1 float32 64 4 @expr in[0]==0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 395.0, 68.0, 22.0 ],
					"text" : "jit.+ @val 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 367.0, 70.0, 22.0 ],
					"text" : "jit.* @val -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 335.0, 29.5, 22.0 ],
					"text" : "jit.*"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 112.0, 494.0, 50.5, 22.0 ],
					"text" : "jit.3m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 303.0, 209.0, 22.0 ],
					"text" : "jit.expr 1 float32 64 4 @expr snorm[0]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 451.0, 129.0, 22.0 ],
					"text" : "jit.matrix 1 float32 64 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 275.0, 125.0, 22.0 ],
					"text" : "jit.noise 1 float32 64 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 604.0, 502.0, 73.0, 22.0 ],
					"text" : "jit.normalize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 329.0, 164.0, 81.0, 22.0 ],
					"text" : "s 3_loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 164.0, 81.0, 22.0 ],
					"text" : "s 2_loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 329.0, 126.0, 81.0, 22.0 ],
					"text" : "s 1_loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 212.0, 73.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 126.0, 81.0, 22.0 ],
					"text" : "s 0_loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1268.800018906593323, 1017.600015163421631, 60.0, 22.0 ],
					"text" : "s 0_offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1268.800018906593323, 344.000005125999451, 39.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1268.800018906593323, 402.400005996227264, 57.0, 22.0 ],
					"text" : "accum 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1364.800020337104797, 1017.600015163421631, 60.0, 22.0 ],
					"text" : "s 1_offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1366.400020360946655, 344.000005125999451, 36.75, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1366.400020360946655, 402.400005996227264, 57.0, 22.0 ],
					"text" : "accum 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1460.800021767616272, 1017.600015163421631, 60.0, 22.0 ],
					"text" : "s 2_offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1464.000021815299988, 344.000005125999451, 39.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1464.000021815299988, 402.400005996227264, 57.0, 22.0 ],
					"text" : "accum 0."
				}

			}
, 			{
				"box" : 				{
					"args" : [ 3 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-33",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "row_repos.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 336.0, 706.0, 50.0, 31.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 2 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "row_repos.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 228.0, 706.0, 50.0, 31.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-22",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "row_repos.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 124.0, 706.0, 50.0, 31.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 0 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-19",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "row_repos.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 20.0, 706.0, 50.0, 31.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.9, 0.9, 0.9, 1.0 ],
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.0, 109.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"text" : "s #0_redraw_clock"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.9, 0.9, 0.9, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 13.0, 70.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.15302081646527, 0.153020772941671, 0.153020784351525, 1.0 ],
					"checkedcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 39.0, 50.0, 50.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.toolbar_divider_active"
						}
,
						"checkedcolor" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.9, 0.9, 0.9, 1.0 ],
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, 91.0, 63.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"saved_newobj_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.toolbar_searchbar_text"
						}

					}
,
					"text" : "qmetro 33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 842.0, 108.0, 22.0 ],
					"text" : "jit.matrix arc-frame"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1556.800023198127747, 1017.600015163421631, 60.0, 22.0 ],
					"text" : "s 3_offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1159.200017273426056, 111.200001657009125, 107.0, 22.0 ],
					"text" : "r #0_redraw_clock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1268.800018906593323, 15.20000022649765, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"filename" : "arc-matrix-ui.js",
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1268.800018906593323, 163.200002431869507, 21.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "v8",
					"textfile" : 					{
						"filename" : "arc-matrix-ui.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1280.800019085407257, 111.200001657009125, 79.0, 22.0 ],
					"text" : "set arc-frame"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1292.800019264221191, 84.800001263618469, 115.0, 22.0 ],
					"text" : "read arc-matrix-ui.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1268.800018906593323, 55.200000822544098, 42.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1364.800020337104797, 140.800002098083496, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 237.0, 154.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1364.800020337104797, 175.200002610683441, 72.0, 23.0 ],
					"text" : "monitor $1"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "monome-device.maxpat",
					"numinlets" : 3,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "int", "", "", "", "" ],
					"patching_rect" : [ 1268.800018906593323, 208.800003111362457, 210.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1268.800018906593323, 300.800004482269287, 77.0, 23.0 ],
					"text" : "route 0 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1268.800018906593323, 271.200004041194916, 147.0, 23.0 ],
					"text" : "route /monome/enc/delta"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.0, 324.0, 105.0, 23.0 ],
					"text" : "weight $1 $1 $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-31",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 271.0, 297.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 383.0, 385.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 335.0, 385.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-27",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 283.0, 385.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.0, 421.0, 113.0, 23.0 ],
					"text" : "pak origin 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.0, 324.0, 98.0, 23.0 ],
					"text" : "scale $1 $1 $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-12",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 551.0, 385.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-20",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 499.0, 385.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-13",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 385.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 435.0, 421.0, 113.0, 23.0 ],
					"text" : "pak offset 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 383.0, 297.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "basis",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 641.0, 385.0, 245.0, 23.0 ],
					"text_width" : 47.140022000000002
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 604.0, 466.0, 113.0, 22.0 ],
					"text" : "jit.bfg 1 float32 64 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 774.0, 80.0, 60.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 742.0, 334.0, 22.0 ],
					"text" : "jit.glue @rows 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 622.0, 439.0, 22.0 ],
					"text" : "jit.scissors @rows 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 538.0, 80.0, 60.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1559.200023233890533, 344.000005125999451, 37.25, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1560.000023245811462, 402.400005996227264, 57.0, 22.0 ],
					"text" : "accum 0."
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-103", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 1 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 2 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 3 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-114", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-114", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-114", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"source" : [ "obj-115", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 1 ],
					"midpoints" : [ 685.5, 664.5, 360.5, 664.5 ],
					"source" : [ "obj-118", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 1 ],
					"midpoints" : [ 661.5, 664.5, 253.0, 664.5 ],
					"source" : [ "obj-118", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 1 ],
					"midpoints" : [ 637.5, 664.5, 149.0, 664.5 ],
					"source" : [ "obj-118", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 1 ],
					"midpoints" : [ 613.5, 664.5, 45.0, 664.5 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 3 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 1298.300019204616547, 752.100015163421631, 1253.800023198127747, 752.100015163421631, 1253.800023198127747, 398.100015163421631, 1278.300018906593323, 398.100015163421631 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 1393.500020623207092, 752.100015163421631, 1352.800023198127747, 752.100015163421631, 1352.800023198127747, 398.100015163421631, 1375.900020360946655, 398.100015163421631 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 1491.900022089481354, 752.100015163421631, 1448.800023198127747, 752.100015163421631, 1448.800023198127747, 398.100015163421631, 1473.500021815299988, 398.100015163421631 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 1 ],
					"source" : [ "obj-134", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 1587.100023508071899, 752.100015163421631, 1544.800023198127747, 752.100015163421631, 1544.800023198127747, 398.100015163421631, 1569.500023245811462, 398.100015163421631 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 444.5, 454.5, 613.5, 454.5 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"source" : [ "obj-142", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-142", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-142", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"order" : 1,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"order" : 0,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"order" : 2,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-148", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-148", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-148", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 1 ],
					"source" : [ "obj-152", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 1 ],
					"source" : [ "obj-153", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 1 ],
					"source" : [ "obj-155", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 3 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 2 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 1161.500017166137695, 668.100015163421631, 1278.300018906593323, 668.100015163421631 ],
					"order" : 3,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 1161.500017166137695, 668.100015163421631, 1375.100020349025726, 668.100015163421631 ],
					"order" : 2,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 1161.500017166137695, 668.100015163421631, 1473.500021815299988, 668.100015163421631 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 1161.500017166137695, 668.100015163421631, 1568.700023233890533, 668.100015163421631 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 1 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 1 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 1 ],
					"source" : [ "obj-168", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 1 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 2 ],
					"source" : [ "obj-171", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-173", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-180", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"source" : [ "obj-180", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-180", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 1 ],
					"source" : [ "obj-182", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 1 ],
					"source" : [ "obj-183", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 613.5, 252.28125, 29.5, 252.28125 ],
					"order" : 1,
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 2 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 1 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 2 ],
					"midpoints" : [ 552.5, 664.5, 375.5, 664.5 ],
					"source" : [ "obj-208", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 2 ],
					"midpoints" : [ 530.833333333333371, 664.5, 268.5, 664.5 ],
					"source" : [ "obj-208", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 2 ],
					"midpoints" : [ 509.166666666666686, 664.5, 164.5, 664.5 ],
					"source" : [ "obj-208", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 2 ],
					"midpoints" : [ 487.5, 664.5, 60.5, 664.5 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-21", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 392.5, 356.5, 613.5, 356.5 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 3 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 2 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 280.5, 454.5, 613.5, 454.5 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 280.5, 356.5, 613.5, 356.5 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"order" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 1 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 2 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 3 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"order" : 1,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 3,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"order" : 2,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"order" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"order" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"order" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"order" : 1,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-76", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 2 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 3 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-85", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-85", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-85", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"order" : 1,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 1 ],
					"order" : 3,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"order" : 2,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"order" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"order" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
 ],
		"originid" : "pat-3890",
		"parameters" : 		{
			"obj-152" : [ "vst~", "vst~", 0 ],
			"obj-153" : [ "vst~[11]", "vst~", 0 ],
			"obj-155" : [ "live.gain~[4]", "live.gain~[4]", 0 ],
			"obj-157" : [ "live.dial[3]", "live.dial", 0 ],
			"obj-159" : [ "live.dial[2]", "live.dial", 0 ],
			"obj-161" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-163" : [ "live.dial", "live.dial", 0 ],
			"obj-168" : [ "vst~[2]", "vst~[2]", 0 ],
			"obj-182" : [ "vst~[3]", "vst~[3]", 0 ],
			"obj-183" : [ "vst~[4]", "vst~[4]", 0 ],
			"obj-64::obj-50" : [ "live.gain~", "live.gain~", 0 ],
			"obj-77::obj-50" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-78::obj-50" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-81::obj-50" : [ "live.gain~[3]", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-77::obj-50" : 				{
					"parameter_longname" : "live.gain~[1]"
				}
,
				"obj-78::obj-50" : 				{
					"parameter_longname" : "live.gain~[2]"
				}
,
				"obj-81::obj-50" : 				{
					"parameter_longname" : "live.gain~[3]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Ghz Megaverb 3.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Ghz Tiltshift 3_20250214.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Ghz Tupe 3.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Grand Finale_20250124.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "UADx Pultec MEQ-5 EQ.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "arc-matrix-ui.js",
				"bootpath" : "~/Music/monome/monome-jit.matrix",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jit.+.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "monome-device.js",
				"bootpath" : "~/Documents/Max 9/Packages/monome/patchers",
				"patcherrelativepath" : "../../../Documents/Max 9/Packages/monome/patchers",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "monome-device.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/monome/patchers",
				"patcherrelativepath" : "../../../Documents/Max 9/Packages/monome/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "row_repos.maxpat",
				"bootpath" : "~/Music/monome/monome-jit.matrix",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "scrub_voice.maxpat",
				"bootpath" : "~/Music/monome/monome-jit.matrix",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "signature.maxpat",
				"bootpath" : "~/Music/max/max_journal",
				"patcherrelativepath" : "../../max/max_journal",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-60", "obj-40", "obj-62", "obj-61" ]
			}
, 			{
				"boxes" : [ "obj-18", "obj-68", "obj-5", "obj-17", "obj-7", "obj-69", "obj-71", "obj-72" ]
			}
, 			{
				"boxes" : [ "obj-100", "obj-112", "obj-109", "obj-110", "obj-111", "obj-114", "obj-113", "obj-108" ]
			}
, 			{
				"boxes" : [ "obj-55", "obj-144", "obj-145", "obj-54", "obj-142", "obj-143", "obj-67", "obj-115", "obj-131", "obj-141", "obj-149", "obj-79", "obj-125", "obj-74" ]
			}
, 			{
				"boxes" : [ "obj-191", "obj-189", "obj-180", "obj-188", "obj-179", "obj-178", "obj-186", "obj-165" ]
			}
, 			{
				"boxes" : [ "obj-205", "obj-177", "obj-132", "obj-169", "obj-170", "obj-171", "obj-174", "obj-175", "obj-181", "obj-173", "obj-164" ]
			}
, 			{
				"boxes" : [ "obj-95", "obj-104", "obj-103", "obj-105", "obj-89", "obj-88", "obj-87", "obj-106", "obj-102", "obj-36" ]
			}
, 			{
				"boxes" : [ "obj-122", "obj-123" ]
			}
, 			{
				"boxes" : [ "obj-199", "obj-200", "obj-8", "obj-176", "obj-6", "obj-207", "obj-12", "obj-11", "obj-14", "obj-13", "obj-20", "obj-24", "obj-206", "obj-56", "obj-15", "obj-28", "obj-27", "obj-26", "obj-25", "obj-30", "obj-138", "obj-139", "obj-118", "obj-208", "obj-31", "obj-2", "obj-75", "obj-196", "obj-66", "obj-194", "obj-193", "obj-101", "obj-99", "obj-76", "obj-97", "obj-65", "obj-73", "obj-1", "obj-83", "obj-10", "obj-82", "obj-19", "obj-195", "obj-3", "obj-4", "obj-58", "obj-22", "obj-190", "obj-32", "obj-185", "obj-33", "obj-172" ]
			}
, 			{
				"boxes" : [ "obj-64", "obj-78", "obj-86", "obj-77", "obj-81", "obj-120", "obj-134", "obj-153", "obj-166", "obj-163", "obj-162", "obj-167", "obj-152", "obj-161", "obj-160", "obj-182", "obj-183", "obj-116", "obj-168", "obj-154", "obj-155", "obj-159", "obj-158", "obj-157", "obj-156" ]
			}
 ]
	}

}
