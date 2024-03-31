--Fixes some awful code I wrote a long time ago
--I previously overwrote a vanilla file, this code just overwrites a single function instead.
--Hugo

local vanilla = ISRemoveGrass.perform

--Call the vanilla function, then give the player the grass.
function ISRemoveGrass:perform()
  vanilla()
	self.character:getInventory():AddItem("Hydrocraft.HCGrass")
end
