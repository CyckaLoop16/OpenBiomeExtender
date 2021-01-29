--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

DENSITY_MULTIPLIER = 0.5

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  --["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-VolcanoesInOtherBiomes.pak",
  ["MOD_DESCRIPTION"]		= "Adds a chance for volcanoes to spawn in all biomes, although at a lower density than in the Lava biome.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DISTANTOBJECTS/LAVA/LAVAOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SPARSEVOLCANOESOBJECTS.MBIN"},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SPARSEVOLCANOESOBJECTS.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{--Set volcano density
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER}
							}
						},
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN",
					"OPENBE/BIOMEFILES/BARREN/BARRENINFESTEDBIOME.MBIN",
					"OPENBE/BIOMEFILES/DEAD/DEADBIOME.MBIN",
					"OPENBE/BIOMEFILES/DEAD/DEADFROZENBIOME.MBIN",
					"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN",
					"OPENBE/BIOMEFILES/FROZEN/FROZENINFESTEDBIOME.MBIN",
					--Not adding it to the HugeProps because these biomes need the HugeProps to spawn and adding this to the DISTANTOBJECTS would clash with that.
					--"OPENBE/BIOMEFILES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
					--"OPENBE/BIOMEFILES/HUGEPROPS/HUGERING/HUGERINGBIOME.MBIN",
					--"OPENBE/BIOMEFILES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
					--"OPENBE/BIOMEFILES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
					--"OPENBE/BIOMEFILES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
					--"OPENBE/BIOMEFILES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
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
					--Not including volcanoes in the Hexagon worlds cause it's weird to me to have volcanoes coming out of metallic hexagon floor.
					--"OPENBE/BIOMEFILES/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
					"OPENBE/BIOMEFILES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
					"OPENBE/BIOMEFILES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
					"OPENBE/BIOMEFILES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
					"OPENBE/BIOMEFILES/WEIRD/SHARDS/SHARDSBIOME.MBIN",
					"OPENBE/BIOMEFILES/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SPARSEVOLCANOESOBJECTS.MBIN" />
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