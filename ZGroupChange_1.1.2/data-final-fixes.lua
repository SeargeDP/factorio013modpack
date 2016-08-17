z_debug = false

z_balance = {}
require("config")
for k,v in pairs(z_balance) do
	z_balance[k] = not z_balance_Ignore_All and v
end
log("Balance: %s",dumpvar(z_balance))
for k,v in pairs(data.raw) do if type(v) == "table" then
	for kk,vv in pairs(v) do table.insert(zgc.name_list,vv.name or kk) end
end end
zgc.generate_main_groups()


require("mods.vanila")
--require("mods.5dim")
require("mods.bobs")
require("mods.angels")
--require("mods.yuoki")
--require("mods.yuoki_railway")
require("mods.uranium")

require("mods.other")
if use_custom_order then require("mods._custom_") end

data.raw.player["player"].inventory_size = 120

local que = {}
if zgc.ig("refining") and zgc.ig("youki") and zgc.ig("atom") then
	que = {"refining","plates","liquids","chemistry","parts","youki","atom","module","decorative","trains-vehicles","armor","weaponry","alien","other"}
elseif zgc.ig("refining") and zgc.ig("youki") then
	que = {"refining","plates","liquids","chemistry","parts","youki","module","armor","weaponry","trains-vehicles","decorative","alien","other"}
elseif zgc.ig("refining") and zgc.ig("atom") then
	que = {"refining","plates","liquids","chemistry","armor","weaponry","atom","module","decorative","trains-vehicles","alien","other"}
elseif zgc.ig("youki") and zgc.ig("atom") then
	que = {"plates","liquids","chemistry","module","parts","youki","atom","armor","weaponry","trains-vehicles","decorative","alien","other"}
elseif zgc.ig("refining") then
	que = {"refining","plates","liquids","chemistry","armor","weaponry","module","decorative","alien","trains-vehicles","other"}
elseif zgc.ig("youki") then
	que = {"plates","liquids","chemistry","module","parts","youki","armor","weaponry","alien","trains-vehicles","decorative","other"}
elseif zgc.ig("atom") then
	que = {"plates","liquids","chemistry","decorative","armor","weaponry","module","atom","alien","trains-vehicles","other"}
else
	que = {"plates","liquids","chemistry","decorative","armor","weaponry","module","trains-vehicles","alien","other"}
end

zgc.resort_main_groups(que)
zgc.add_newRessource_finalize()


if false then
	z_debug = true
	log("-----[[ AFTER ]]-----"	)
--	log("[NAMES] => %s",		dumpvar(data.raw, 2, 1))
	log("[GROUPS] => %s",		dumpvar(data.raw["item-group"],2,0))
	log("[S_GROUPS] => %s",		dumpvar(data.raw["item-subgroup"],2,0))
end