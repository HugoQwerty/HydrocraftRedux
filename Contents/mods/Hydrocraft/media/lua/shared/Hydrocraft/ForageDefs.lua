
if isClient() then return end

local hcForageDefs = function()

	local cowPoop = {
		type = "Hydrocraft.HCCowpoopferal",
		minCount = 1,
		maxCount = 1,
		skill = 2, --TODO: higher skill requirement?
		perks = { "Trapping" }, --TODO: change skill?
		xp = 1,
		snowChance = -20,
		categories = { "Crops" },
		zones = {
			FarmLand	= 1,
		},
		months = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
		canBeOnTreeSquare = false,
	}

  forageSystem.addItemDef(cowPoop)

end

Events.onAddForageDefs.Add(hcForageDefs)
