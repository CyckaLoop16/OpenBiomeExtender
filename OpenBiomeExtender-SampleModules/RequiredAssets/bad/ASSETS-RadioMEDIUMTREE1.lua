--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzCodenameAwesome-Assets.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-Assets-RadioMEDIUMTREE1.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Copies the MEDIUMTREE1 model and swaps the materials for ones from the Radioactive trees.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =  {
				{--Create the model
					["MBIN_FILE_SOURCE"] = {
						{"MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.DESCRIPTOR.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/RADIOACTIVE/LARGEPROPS/MEDIUMTREE1.DESCRIPTOR.MBIN","REMOVE"},
						{"MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.GEOMETRY.DATA.MBIN.PC","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/RADIOACTIVE/LARGEPROPS/MEDIUMTREE1.GEOMETRY.DATA.MBIN.PC","REMOVE"},
						{"MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.GEOMETRY.MBIN.PC","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/RADIOACTIVE/LARGEPROPS/MEDIUMTREE1.GEOMETRY.MBIN.PC","REMOVE"},
						{"MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/RADIOACTIVE/LARGEPROPS/MEDIUMTREE1.SCENE.MBIN","REMOVE"},
					}
				},
				{--Replace the materials
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/RADIOACTIVE/LARGEPROPS/MEDIUMTREE1.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKFBILLBOARD_NEWLEAFMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKCBILLBOARD_NEWLEAFMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKCBILLBOARD1_TRUNKCBILLBOARD_NEWLEAFMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKBBILLBOARD_NEWLEAFMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\IMPOSTERMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\GLOWYTREEMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\GIANTLILYMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\FRUITMAT3.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\FRUITMAT2.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\FRUITMAT1.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\FRUITMAT.MATERIAL.MBIN]],[[]]},
								{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\FRONDMAT.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\RADIOACTIVE\LARGE\RADIOACTIVETREE\RADLEAFMAT.MATERIAL.MBIN]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\DISCMAT3.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\DISCMAT2.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\DISCMAT1.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\DISCMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BBOARD_NEWLEAFMAT.MATERIAL.MBIN]],[[]]},
								--The barks look glitched red so I'm commenting them out.
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK9.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\RADIOACTIVE\LARGE\RADIOACTIVETREE\RADIATIONBARKMAT.MATERIAL.MBIN]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK7.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\RADIOACTIVE\LARGE\RADIOACTIVETREE\RADIATIONBARKMAT.MATERIAL.MBIN]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK5.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\RADIOACTIVE\LARGE\RADIOACTIVETREE\RADIATIONBARKMAT.MATERIAL.MBIN]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK3.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\RADIOACTIVE\LARGE\RADIOACTIVETREE\RADIATIONBARKMAT.MATERIAL.MBIN]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK11.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\RADIOACTIVE\LARGE\RADIOACTIVETREE\RADIATIONBARKMAT.MATERIAL.MBIN]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK1.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\RADIOACTIVE\LARGE\RADIOACTIVETREE\RADIATIONBARKMAT.MATERIAL.MBIN]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\ACCCS4_FRUITMAT.MATERIAL.MBIN]],[[]]},
								--{[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\ACCCS4_DISCMAT.MATERIAL.MBIN]],[[]]},
							}
						}
					}
				},			
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE