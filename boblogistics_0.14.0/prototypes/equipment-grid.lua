data:extend(
{
  {
    type = "equipment-category",
    name = "train"
  },
  {
    type = "equipment-category",
    name = "locomotive"
  },
  {
    type = "equipment-category",
    name = "cargo-wagon"
  },
  {
    type = "equipment-category",
    name = "armoured-vehicle"
  },
  {
    type = "equipment-category",
    name = "armoured-train"
  },
  {
    type = "equipment-category",
    name = "armoured-locomotive"
  },
  {
    type = "equipment-category",
    name = "armoured-cargo-wagon"
  },

  {
    type = "equipment-grid",
    name = "bob-diesel-locomotive",
    width = 8,
    height = 2,
    equipment_categories = {"train", "locomotive"}
  },
  {
    type = "equipment-grid",
    name = "bob-cargo-wagon",
    width = 8,
    height = 2,
    equipment_categories = {"train", "cargo-wagon"}
  },
  {
    type = "equipment-grid",
    name = "diesel-locomotive-2",
    width = 8,
    height = 3,
    equipment_categories = {"train", "locomotive"}
  },
  {
    type = "equipment-grid",
    name = "cargo-wagon-2",
    width = 8,
    height = 3,
    equipment_categories = {"train", "cargo-wagon"}
  },
  {
    type = "equipment-grid",
    name = "diesel-locomotive-3",
    width = 8,
    height = 4,
    equipment_categories = {"train", "locomotive"}
  },
  {
    type = "equipment-grid",
    name = "cargo-wagon-3",
    width = 8,
    height = 4,
    equipment_categories = {"train", "cargo-wagon"}
  },
  {
    type = "equipment-grid",
    name = "armoured-diesel-locomotive",
    width = 10,
    height = 6,
    equipment_categories = {"train", "locomotive", "armoured-vehicle", "armoured-train", "armoured-locomotive"}
  },
  {
    type = "equipment-grid",
    name = "armoured-cargo-wagon",
    width = 10,
    height = 6,
    equipment_categories = {"train", "cargo-wagon", "armoured-vehicle", "armoured-train", "armoured-cargo-wagon"}
  },
}
)


