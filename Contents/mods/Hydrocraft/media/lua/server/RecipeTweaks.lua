
local funcList = {}

funcList["Fix Fishing Rod"] = function(recipe)
  local source = recipe:findSource("Base.Nails")
  if source then
    source:getItems():add( "[Recipe.GetItemTypes.FishHook]" )
    source:getItems():remove( "Base.Nails" ) --removes nail from recipe, so need to craft a fish hook
  end
end


local sm = getScriptManager()
local recipes = sm:getAllRecipes()

for i=0, recipes:size()-1 do
	local recipe = recipes:get(i)
	local name = recipe:getOriginalname() --Note: can't use getName(), as that is translated
	
	if funcList[name] then
		funcList[name](recipe) --can call on more than 1 iteration, i.e. called for each recipes with this name
	end
end
