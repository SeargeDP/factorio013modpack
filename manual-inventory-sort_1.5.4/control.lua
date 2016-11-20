migration = require "script.migration"

script.on_configuration_changed(migration.migrate)
script.on_init(migration.init)

require("script.events")