--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

--THIS MOD REQUIRES THE ASSET FILES
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  --["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-SnowyHUGEROCKSPIKE.pak",
  ["MOD_DESCRIPTION"]		= "Adds a chance for the original pre-NEXT tree models to spawn.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] =  {
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DISTANTOBJECTS/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/FROZEN/FROZENHUGEROCKOBJECTSFULL.MBIN"},
					}
				},
				{--Replace the tree model path
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/FROZEN/FROZENHUGEROCKOBJECTSFULL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{--Remove the platform rock
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL",
						},
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[["MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGESPIKEROCK.SCENE.MBIN"]],[["CUSTOMMODELS/CODENAMEAWESOME/BIOMES/HUGEPROPS/SNOWYHUGEROCK/HUGESPIKEROCK.SCENE.MBIN"]]}
							}
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/DEAD/DEADFROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/FROZEN/FROZENINFESTEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/FROZEN/FROZENHUGEROCKOBJECTSFULL.MBIN" />
        </Property>]]
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE