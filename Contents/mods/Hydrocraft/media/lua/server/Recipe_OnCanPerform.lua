
--OnCanPerform functions for use in recipes, to check if a recipe can be performed
--Intended for checks that cannot be specified in the recipe like skill & materials
--For example, checking a nearby container is empty, or checking the player's moodles.

Hydrocraft = Hydrocraft or {}
Hydrocraft.OnCanPerform = {}

--Check the player is next to a Kiln and that the kiln is empty
--NearItem:Kiln, in the recipe will only check proximity and not if it is empty
function Hydrocrat.OnCanPerform.NearEmptyKiln(recipe, player, item)
	if not player then return false end --don't think this can ever happen.
	local x,y,z = player:getX(), player:getY(), player:getZ()
	local kiln = nil
		
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

	if not kiln then return false end --no kiln nearby		
	if kiln:getContainer():getItems():size() > 0 then return false end --kiln is not empty

	return true
end
