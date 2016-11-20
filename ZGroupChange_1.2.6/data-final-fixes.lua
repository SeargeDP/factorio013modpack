z_debug = true


--# rebalancing
z_balance = z_balance or {}
require("config")
for k,v in pairs(z_balance) do z_balance[k] = not z_balance_Ignore_All and v end
if not data.raw["custom-input"] or not data.raw["custom-input"]["bob-inserter-drop-range"] then z_balance.bob_inserters = false end

_log("Balance: %s",dumpvar(z_balance))

--# generate name list
for k,v in pairs(data.raw) do if type(v) == "table" then
	for kk,vv in pairs(v) do table.insert(zgc.name_list,vv.name or kk) end
end end

--# create basic groups
zgc.generate_main_groups()


require("mods.vanila")
require("mods.5dim")
require("mods.bobs")
require("mods.angels")
require("mods.yuoki")
require("mods.yuoki_railway")
require("mods.yuoki_engine")

require("mods.other")
if use_custom_order then require("mods._custom_") end


data.raw.player["player"].inventory_size = 120

--# resort groups based on enabled mods/groups
local que = {}
if		zgc.ig("refining")	and	zgc.ig("youki")	and	zgc.ig("engines")	and	zgc.ig("atom")	then que = {"refining","resources","plates","liquids","chemistry","youki","engines","atom","parts","agronomies","armor","weaponry","module","alien","decorative","other"}
elseif	zgc.ig("refining")	and	zgc.ig("youki")	and	zgc.ig("engines")						then que = {"refining","resources","plates","liquids","chemistry","youki","engines","parts","agronomies","alien","armor","weaponry","module","decorative","other"}
elseif							zgc.ig("youki")	and	zgc.ig("engines")	and	zgc.ig("atom")	then que = {"resources","plates","liquids","chemistry","alien","youki","engines","atom","parts","agronomies","armor","weaponry","module","decorative","other"}
elseif							zgc.ig("youki")	and	zgc.ig("engines")						then que = {"resources","plates","liquids","chemistry","alien","youki","engines","parts","agronomies","decorative","armor","weaponry","module","other"}
elseif	zgc.ig("refining")	and	zgc.ig("youki")							and	zgc.ig("atom")	then que = {"refining","resources","plates","liquids","chemistry","youki","parts","atom","module","alien","armor","weaponry","decorative","other"}
elseif	zgc.ig("refining")	and	zgc.ig("youki")												then que = {"refining","resources","plates","liquids","chemistry","youki","parts","module","alien","decorative","armor","weaponry","other"}
elseif							zgc.ig("youki")							and	zgc.ig("atom")	then que = {"resources","plates","liquids","chemistry","alien","youki","parts","atom","module","decorative","armor","weaponry","other"}
elseif	zgc.ig("refining")												and	zgc.ig("atom")	then que = {"refining","resources","plates","liquids","chemistry","armor","weaponry","atom","module","alien","decorative","other"}
elseif							zgc.ig("youki")							 					then que = {"resources","plates","liquids","chemistry","alien","youki","parts","module","armor","weaponry","decorative","other"}
elseif	zgc.ig("refining")																	then que = {"refining","resources","plates","liquids","chemistry","armor","weaponry","module","alien","decorative","other"}
elseif																		zgc.ig("atom")	then que = {"resources","plates","liquids","chemistry","alien","armor","weaponry","atom","module","decorative","other"}
else																							 que = {"resources","plates","liquids","chemistry","alien","armor","weaponry","module","decorative","other"}
end

--# final tunning
zgc.resort_main_groups(que)
zgc.add_newRessource_finalize()

_log("AFTER WORK")
for k, v in pairs(data.raw["fluid"]) do
	_log("FLUID: %s : %s IN %s/%s(%s)",k,v.name,v.group,v.subgroup,v.order)
end


if true then
	z_debug = true
--	_log("-----[[ AFTER ]]-----"	)
--	_log("[NAMES] => %s",		dumpvar(data.raw, 2, 1))
--	_log("[ALL] => %s",			dumpvar(data.raw, nil, 1))
end