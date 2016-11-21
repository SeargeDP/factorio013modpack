-- Force wooden board alternatives to be created in assemblers

local function force_assembler(recipe)
	if data.raw.recipe[recipe] then
		data.raw.recipe[recipe].category = "advanced-crafting"
	end
end

-- Bob's Plates
-- Synthetic wood from oil
force_assembler("synthetic-wood")

-- Angel's Bioprocessing
force_assembler("wood-from-cellulose-resin")
force_assembler("wood-from-cellulose")
