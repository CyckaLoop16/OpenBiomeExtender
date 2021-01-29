--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-MountainBiomes.pak",
  ["MOD_DESCRIPTION"]		= "Adds cave object lists that look like overworld biomes (but with stalagmites and cave glow plants)",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/BARRENOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/FROZENOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LAVA/LAVAOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LAVAOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHHQOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHHQOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/RADIOACTIVEOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/SCORCHEDOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/SWAMPOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/TOXICOBJECTSMID.MBIN"},
					}
				},
				{--Remove grass from lush object lists
					["MBIN_FILE_SOURCE"] = {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					},
				},
				{--Remove grass from lush object lists
					["MBIN_FILE_SOURCE"] = {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHHQOBJECTSFULL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					},
				},
				{--Remove grass from lush object lists
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					},
				},
				{--Add these files to the all non snowy biomes. These won't have snowy themed object lists.
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN",
						"OPENBE/BIOMEFILES/BARREN/BARRENINFESTEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/DEAD/DEADBIOME.MBIN", --Plants spawning here is weird so not adding them
						--"OPENBE/BIOMEFILES/DEAD/DEADFROZENBIOME.MBIN", --Plants spawning here is weird so not adding them
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
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/TOXICOBJECTSMID.MBIN" />
        </Property>]]
						},
					}
				},
				{--Now lets add some to the snowy biomes. This won't have hot themed object lists.
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/FROZEN/FROZENINFESTEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/TOXICOBJECTSMID.MBIN" />
        </Property>]]
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