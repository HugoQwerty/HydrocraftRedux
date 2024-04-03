--Example code of a suggested change to how items are added to the loot tables.

local runExampleCode = true -- toggle as desired

if not runExampleCode then return end

--The items to insert into the loot tables.
--This will usually just be a single item, however if you have several items all going into the same loot tables
--then you can do them all at once, e.g. several magazines spawning in the same tables with the same spawn chance.
local items = { "Base.Stone" }
--if more than one, use: local items = { "Base.Item1", "Base.Item2", "etc" }

--There are 3 types of loot tables
--1) SuburbsDistributions
--2) ProceduralDistributions
--3) VehicleDistributions

--The vast majority are going to be type 2, but all 3 are dealt with in the same way
--Just specify the name of the loot table & the spawn chance
--Note the spawn chance is a table, not a number, this allows for the same item to be added 
--to the loot table more than once, e.g. the item is common & you want the game to spawn several of them.

--Note: SuburbsDistributions has some sub-tables in the loot definitions, but these are not common, & are not supported by this code.


local subDist = {}
subDist["Bag_JanitorToolbox"] = {50}

local procDist = {}
procDist["BreakRoomCounter"] = {75}
procDist["KitchenDishes"] = {75}
procDist["WesternKitchenButcher"] = {50}
procDist["BurgerKitchenButcher"] = {50}

local vehicDist = {}
vehicDist["CarpenterTruckBed"] = {80}


--code below does the work
--just copy this file, edit the above, and leave the code below untouched.
--No edits required below this line


for k,v in pairs(subDist) do
	local tbl = SuburbsDistributions[k].items
	for i=1, #v do
		for j=1, #items do
			table.insert(tbl, items[j])
			table.insert(tbl, v[i])
		end
	end
end

for k,v in pairs(procDist) do
	local tbl = ProceduralDistributions.list[k].items
	for i=1, #v do
		for j=1, #items do
			table.insert(tbl, items[j])
			table.insert(tbl, v[i])
		end
	end
end

for k,v in pairs(vehicDist) do
	local tbl = VehicleDistributions[k].items
	for i=1, #v do
		for j=1, #items do
			table.insert(tbl, items[j])
			table.insert(tbl, v[i])
		end
	end
end
