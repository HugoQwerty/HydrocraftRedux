

Hydrocraft = Hydrocraft or {}
Hydrocraft.OnCreate = {}

--Spawn burning charcoal into the kiln, cools after 24 hours
function Hydrocraft.OnCreate.LightCharcoal(items, result, player)
	local x,y,z = player:getX(), player:getY(), player:getZ()
	local kiln
	for i=x-1, x+1 do
		for j=y-1, y+1 do
			local sq = getCell():getGridSquare(i, j, z)
			if sq then
				local objects = sq:getObjects()
				for k=0, objects:size()-1 do
					local object = objects:get(k)
					if object:getName() == "Kiln" then
						kiln = object
						break
					end
				end
			end
		end
	end

	if kiln then --should always be true
		local container = kiln:getContainer()
		local items = container:getItems()
		
		if items:size() > 0 then
			print("Error: kiln is not empty.") --should never happen as check in OnCanPerform
			return
		end
		container:AddItem("Hydrocraft.CharcoalBurning")
	end

end
