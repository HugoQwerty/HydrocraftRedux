

local scriptItem = ScriptManager.instance:getItem("Base.PillsBeta")
if scriptItem then
	scriptItem:DoParam("ReplaceOnUse = Hydrocraft.HCPillbox")
end

scriptItem = ScriptManager.instance:getItem("Base.SheetMetal")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = CraftMetal")
	--scriptItem:DoParam("DisplayName = Aluminum Sheet") --why?
end

scriptItem = ScriptManager.instance:getItem("Base.SmallSheetMetal")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = CraftMetal")
end

scriptItem = ScriptManager.instance:getItem("Base.Cigarettes")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = Drugs")
	scriptItem:DoParam("CustomEatSound = HC_LightUp")
end

scriptItem = ScriptManager.instance:getItem("Base.Scotchtape")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = Craft")
	scriptItem:DoParam("Type = Drainable")
	scriptItem:DoParam("UseDelta = 0.25")
end

scriptItem = ScriptManager.instance:getItem("Base.Woodglue")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = CraftCarp")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCWoodglueempty")
end

scriptItem = ScriptManager.instance:getItem("Base.Glue")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = CraftCarp")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCGlueempty")
end

scriptItem = ScriptManager.instance:getItem("Base.Battery")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = CraftElec")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCBatterydead")
end

scriptItem = ScriptManager.instance:getItem("Base.Lighter")
if scriptItem then
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCLighterempty")
end

scriptItem = ScriptManager.instance:getItem("Base.PropaneTank")
if scriptItem then
	scriptItem:DoParam("KeepOnDeplete = TRUE")
	scriptItem:DoParam("DisplayCategory = Fuel")
end

scriptItem = ScriptManager.instance:getItem("Base.Fertilizer")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = SurFarm")
	scriptItem:DoParam("ReplaceOnDeplete = EmptySandbag")
end

scriptItem = ScriptManager.instance:getItem("Base.Coffee2")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodB")
end

scriptItem = ScriptManager.instance:getItem("Base.Sugar")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = Cooking")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCSugarempty") 
end

scriptItem = ScriptManager.instance:getItem("Base.OilVegetable")
if scriptItem then
	scriptItem:DoParam("ReplaceOnDeplete = Base.WaterBottleEmpty")
end

scriptItem = ScriptManager.instance:getItem("Base.Rice")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = Cooking")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCRiceempty") 
end

scriptItem = ScriptManager.instance:getItem("Base.Flour")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = Cooking")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCFlourempty")
end

scriptItem = ScriptManager.instance:getItem("Base.Yoghurt")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.Tofu")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCJar") --should this be ReplaceOnDeplete?
end

scriptItem = ScriptManager.instance:getItem("Base.Milk")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCMilkempty") --should this be ReplaceOnDeplete?
end

scriptItem = ScriptManager.instance:getItem("Base.IcecreamMelted")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Icecream")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.TVDinner")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Ketchup")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodS")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCKetchupempty") --should this be ReplaceOnDeplete?
end

scriptItem = ScriptManager.instance:getItem("Base.Mustard")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodS")
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCMustardempty") --should this be ReplaceOnDeplete?
end

scriptItem = ScriptManager.instance:getItem("Base.Vinegar")
if scriptItem then
	scriptItem:DoParam("ReplaceOnDeplete = Hydrocraft.HCVinegarempty") --should this be ReplaceOnDeplete?
end

scriptItem = ScriptManager.instance:getItem("Base.Pop3")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodB")
end

scriptItem = ScriptManager.instance:getItem("Base.Pop2")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodB")
end

scriptItem = ScriptManager.instance:getItem("Base.Pop")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodB")
end

scriptItem = ScriptManager.instance:getItem("Base.SunflowerSeeds")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Peanuts")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.PeanutButter")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
	scriptItem:DoParam("ReplaceOnUse = Hydrocraft.HCJar")
end

scriptItem = ScriptManager.instance:getItem("Base.MintCandy")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Chocolate")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Salt")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodS")
	scriptItem:DoParam("ReplaceOnUse = Hydrocraft.HCSaltshakerempty")
end

scriptItem = ScriptManager.instance:getItem("Base.Crisps4")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Crisps3")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Crisps2")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.Crisps")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodN")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedBologneseOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedChiliOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.DogfoodOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.TunaTinOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.TinnedSoupOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.OpenBeans")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedTomatoOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedSardinesOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedPotatoOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedPeasOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedMushroomSoupOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedCornOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedCarrotsOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("Base.CannedCornedBeefOpen")
if scriptItem then
	scriptItem:DoParam("DisplayCategory = FoodP")
end

scriptItem = ScriptManager.instance:getItem("farming.Potato")
if scriptItem then
	scriptItem:DoParam("Tags = Potato")
end

scriptItem = ScriptManager.instance:getItem("Base.Cereal")
if scriptItem then
	scriptItem:DoParam("Tags = Cereal")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_FannyPackFront")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 1")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_FannyPackBack")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 1")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_Schoolbag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 2")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_MoneyBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 2")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_WeaponBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 3")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_InmateEscapedBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 3")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_WorkerBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 3")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_DuffelBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 3")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_GolfBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 3")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_DuffelBagTINT")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 3")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_NormalHikingBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 3")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_BigHikingBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 4")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_SurvivorBag")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 4")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_ALICEpack")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 4")
end

scriptItem = ScriptManager.instance:getItem("Base.Bag_ALICEpack_Army")
if scriptItem then
	scriptItem:DoParam("Tags = NylonBag")
	scriptItem:DoParam("NylonAmount = 4")
end

scriptItem = ScriptManager.instance:getItem("Base.BucketConcreteFull")
if scriptItem then
	scriptItem:DoParam("Tags = BucketConcrete")
end














