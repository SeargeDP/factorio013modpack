local allow_changes = z_balance.uranium

if i_exist("uranium-hexafluoride") then

	zgc.add_main_group("atom")
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "uranium" then v.group = "zgc-atom" end
	end
	
	aadd("z-uranium-energy-conversion",	"nuclear-fission-reactor-3-by-3",	"g")
	aadd("z-uranium-energy-conversion",	"nuclear-fission-reactor-5-by-5",	"h")
	aadd("uranium-energy-conversion",	"nuclear-fission-reactor-3-by-3",	"g")
	aadd("uranium-energy-conversion",	"nuclear-fission-reactor-5-by-5",	"h")
	
	aadd("z-uranium-ammo",				"nuclear-fission-reactor-chest-9",	"g")
	aadd("z-uranium-ammo",				"nuclear-fission-reactor-chest-25",	"h")
	aadd("uranium-ammo",				"nuclear-fission-reactor-chest-9",	"g")
	aadd("uranium-ammo",				"nuclear-fission-reactor-chest-25",	"h")
end
