--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

DENSITY_MULTIPLIER = 0.75
COVERAGE_MULTIPLIER = 0.75
RENDER_DISTANCE_MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  --["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-CaveyMountains.pak",
  ["MOD_DESCRIPTION"]		= "Adds cave detailobjects to mountains",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{--Create the object lists
					["MBIN_FILE_SOURCE"] = {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/CAVE/CAVEBIOMEFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/CAVE/CAVEBIOMEGRASSBUSHES.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/CAVE/CAVEBIOMESPARSETOXIC.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"}
					}
				},
				{--Remove stalagtites
					["MBIN_FILE_SOURCE"] = {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						},
					}
				},
				{--Remove ceiling plant
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						},
					}
				},
				{--Remove stalagmites
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					}
				},
				{--Remove stalagmites
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{--Optimize and increase render distance
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Coverage",COVERAGE_MULTIPLIER},
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"FadeOutStartDistance",RENDER_DISTANCE_MULTIPLIER},
								{"FadeOutEndDistance",RENDER_DISTANCE_MULTIPLIER},
							}
						}
					}
				},
				{--Add the object list to relevant biomes. This object list doesn't have plants so we're just going to add it everywhere.
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN",
						"OPENBE/BIOMEFILES/BARREN/BARRENINFESTEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/DEAD/DEADBIOME.MBIN", --Plants spawning here is weird so not adding them
						--"OPENBE/BIOMEFILES/DEAD/DEADFROZENBIOME.MBIN", --Plants spawning here is weird so not adding them
						"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/FROZEN/FROZENINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGERING/HUGERINGBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
						"OPENBE/BIOMEFILES/LAVA/LAVABIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHBUBBLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHROOMABIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHROOMBBIOME.MBIN",
						"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
						"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SCORCHED/SCORCHEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SCORCHED/SCORCHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SWAMP/SWAMPBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICEGGSBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICSPORESBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICTENTACLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/BEAMSTONE/BEAMSBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/BONESPIRE/BONESPIREBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/CONTOUR/CONTOURBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/SHARDS/SHARDSBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN" />
        </Property>]],
						},
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE