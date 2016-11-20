OV = require "prototypes.override-functions"

if angelsmods.refining.enableorerefining then
	require("prototypes.angels-refining-override")
end

if angelsmods.refining.enablewatertreatment then
	require("prototypes.angels-water-treatment-override")
end

OV.execute()