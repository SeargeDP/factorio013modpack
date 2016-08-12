utils = {}

utils.currentVersion = "0.0.4"
utils.migrations = {}

utils.migrations["versionless"] = function()
	glob.sspl.version = "0.0.1"
	utils.migrations["0.0.1"]()
end

utils.migrations["0.0.1"] = function()
	glob.sspl.version = "0.0.2"
	utils.migrations["0.0.2"]()
end

utils.migrations["0.0.2"] = function()
	glob.sspl.version = "0.0.3"
	utils.migrations["0.0.3"]()
end

utils.migrations["0.0.3"] = function()
	-- No changes, but it looks fancy!
	glob.sspl.version = "0.0.4"
end