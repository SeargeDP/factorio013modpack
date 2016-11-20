function is_angelsmods()
	return angelsmods and angelsmods.refining and angelsmods.refining.enableorerefining
end

if bobmods and bobmods.plates then

	require("prototypes.item.usefulbyproducts-item")
	require("prototypes.recipe.usefulbyproducts-recipe")
	require("prototypes.technology.usefulbyproducts-technology")

	if is_angelsmods() then

		require("prototypes.recipe.usefulbyproducts-recipe-angels")
		require("prototypes.technology.usefulbyproducts-technology-angels")

	end
end
