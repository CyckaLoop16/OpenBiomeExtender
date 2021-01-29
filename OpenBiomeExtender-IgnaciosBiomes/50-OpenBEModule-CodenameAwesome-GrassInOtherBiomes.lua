--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

DENSITY_MULTIPLIER = 0.25

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-LushGrassInOtherBiomes.pak",
  ["MOD_DESCRIPTION"]		= "Adds a chance for grass to spawn in biomes that would otherwise would have them. The Radioactive biome especially makes sense for this since the warped trees imply it was once a Lush world.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN",
					"OPENBE/BIOMEFILES/BARREN/BARRENINFESTEDBIOME.MBIN",
					"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN",
					"OPENBE/BIOMEFILES/FROZEN/FROZENINFESTEDBIOME.MBIN",
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGERING/HUGERINGBIOME.MBIN",
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
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
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>]]
						},
					}
				},
				{--Add glow grass to Radio biomes
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
					"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN" />
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