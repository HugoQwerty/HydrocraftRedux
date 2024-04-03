--Fixes some awful code I wrote a long time ago
--I previously overwrote a vanilla file, this code just overwrites a single function instead.
--Hugo

--Update, changed this again before approval - now uses a custom grass removal system rather than the vanilla system.

function ISRemoveGrass:perform()
	local sq = self.square
	local args = { x = sq:getX(), y = sq:getY(), z = sq:getZ() }
	ISBaseTimedAction.perform(self)
	sendClientCommand(self.character, 'Hydrocraft', 'removeGrass', args)
end
