
local commands = {}

commands.removeGrass = function(player, args)
	local scythe = player:getPrimaryHandItem()
	local radius = 0
	if scythe then
		local fullType = scythe:getFullType()
		if scythe:hasTag("HandScythe") then
			radius = 1
		elseif scythe:hasTag("TwoHandScythe") then
			radius = 2
		end	
	end

	local grassCount = 0
	
	for x = args.x - radius, args.x + radius do
		for y = args.y - radius, args.y + radius do
			local sq = getCell():getGridSquare(x, y, args.z)
			if sq then
				for i=sq:getObjects():size(),1,-1 do
					local object = sq:getObjects():get(i-1)
					if object:getProperties() and object:getProperties():Is(IsoFlagType.canBeRemoved) then
						sq:transmitRemoveItemFromSquare(object)
						grassCount = grassCount + 1
					end
				end
			end
		end
	end

	if grassCount > 0 then
		player:getInventory():AddItems("Hydrocraft.HCGrass", grassCount)
	end

end

local onClientCommand = function(module, command, player, args)
	if module ~= "Hydrocraft" then return end

	if commands[command] then
		commands[command](player, args)
	end
end

Events.OnClientCommand.Add(onClientCommand)
