local size = 1000

for i, v in pairs(data.raw["container"]) do
	if v.inventory_size > size then size = v.inventory_size end
end

for i, v in pairs(data.raw["logistic-container"]) do
	if v.inventory_size > size then size = v.inventory_size end
end

data.raw["container"]["manual-inventory-sort-tmp-chest"].inventory_size = size