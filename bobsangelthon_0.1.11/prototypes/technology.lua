if angelsmods.smelting and data.raw["technology"]["ore-processing-1"] then 
 
  data.raw["technology"]["ore-processing-1"].enabled = false
  data.raw["technology"]["ore-processing-2"].enabled = false
  data.raw["technology"]["ore-processing-3"].enabled = false
  data.raw["technology"]["ore-processing-4"].enabled = false
  data.raw["technology"]["ingot-smelting"].enabled = false

  data.raw["technology"]["alien-bio-processing"].prerequisites={"advanced-metallurgy-1", "alien-technology", "bio-processing-1", "concrete-2"}

end
