
--TODO: this file uses global functions, IMO these should be replaced with functions in a table, e.g. Hydrocraft.OnCreate.Whatever
--also, some of the code is terrible, I've fixed some of it but not all of it.  -Hugo

function hcdismantlemicro(items, result, player)
    local inv = player:getInventory()
    inv:AddItem("Base.ElectronicsScrap")
    inv:AddItem("Base.SheetMetal")
end

function hcgetscrap(items, result, player)
    local inv = player:getInventory()
    inv:AddItem("Base.ElectronicsScrap")
    inv:AddItem("Base.Wire")
end

function hcgetdynamo(items, result, player)
    local inv = player:getInventory()
    inv:AddItem("Hydrocraft.HCDynamo")
end


function hcjunkScrapParts(items, result, player) 
	local amount = ZombRand(6)
	player:getInventory():AddItems("Base.ScrapMetal",amount)
end


function hcjunksearchsmall(items, result, player)

	local skill = player:getPerkLevel(Perks.PlantScavenging)
	local luck = ZombRand(10) + skill
	local count = 0
	local junkFinds = {}

	local junk = {'Base.ElectronicsScrap','Base.Newspaper','Hydrocraft.HCBatterysmalldead','Hydrocraft.HCBatteryempty','Hydrocraft.HCBatterymediumdead','Hydrocraft.HCBatterylargedead','Hydrocraft.HCDeodorantspray','Hydrocraft.HCRazorblade','Hydrocraft.HCBookcover','Hydrocraft.HCWirehanger','Hydrocraft.HCWoodhanger','Hydrocraft.HCBathtoweldirty','Hydrocraft.HCSafetypin','Hydrocraft.HCSewingpin','Hydrocraft.HCFilmcanister','Hydrocraft.HCThumbtack','Hydrocraft.HCBinderclip','Hydrocraft.HCDustpan','Base.JarLid','Hydrocraft.HCPaintcan','Hydrocraft.HCGummybearstrash','Hydrocraft.HCCandycorntrash','Hydrocraft.HCEnergydrinktrash','Hydrocraft.HCCrisps6trash','Hydrocraft.HCCrisps5trash','Hydrocraft.HCPoptrash','Hydrocraft.HCCannedsardinesempty','Hydrocraft.HCCannedtomatoempty','Hydrocraft.HCCannedpumpkinempty','Hydrocraft.HCCannedpearempty','Hydrocraft.HCCannedappleempty','Hydrocraft.HCTrailmixtrash','Hydrocraft.HCChocolatewhitetrash','Hydrocraft.HCChocolatedarktrash','Hydrocraft.HCMintcandytrash','Hydrocraft.HCMustardempty','Hydrocraft.HCKetchupempty','Hydrocraft.HCYoghurtempty','Hydrocraft.HCIcecreamempty','Hydrocraft.HCCerealtrash','Hydrocraft.HCOatsempty','Hydrocraft.HCScotchtapeempty','Hydrocraft.HCLicenceplate','Hydrocraft.HCLicenceplate','Hydrocraft.HCEyedropperbottle','Hydrocraft.HCGlassbottlesulfuricacidempty','Hydrocraft.HCGlassbottlephenylempty','Hydrocraft.HCGlassbottlemethylaminempty','Hydrocraft.HCGlassbottleh2o2empty','Hydrocraft.HCGlassbottleammoniaempty','Hydrocraft.HCGlassbottleethanolempty','Hydrocraft.HCPlastcfork','Hydrocraft.HCNapkindirty','Hydrocraft.HCBeercan','Hydrocraft.HCBabyfoodjar','Hydrocraft.HCRamencheesetrash','Hydrocraft.HCRamenshrimptrash','Hydrocraft.HCRamenchickentrash','Hydrocraft.HCCanbangedupopenempty','Hydrocraft.HCCannedcheesesauceopenempty','Hydrocraft.HCCannedchickenbreastopenempty','Hydrocraft.HCCannedfruitcocktailopenempty','Hydrocraft.HCCannedgovermentbeefopenempty','Hydrocraft.HCCannedgovermentbreadopenempty','Hydrocraft.HCCannedgovermentchickenopenempty','Hydrocraft.HCCannedgovermentporkopenempty','Hydrocraft.HCCannedpiefillingappleopenempty','Hydrocraft.HCCannedpiefillingcherryopenempty','Hydrocraft.HCCannedpiefillingblueberryopenempty','Hydrocraft.HCCannedravioliopenempty','Hydrocraft.HCCannedspaghettiringsopenempty','Hydrocraft.HCWhippedcreamcanempty','Hydrocraft.HCPuddingcupempty','Hydrocraft.HCCookiesbrowniebagtrash','Hydrocraft.HCCookiesmintbagtrash','Hydrocraft.HCCookieschocolatechipbagtrash','Hydrocraft.HCEvaporatedmilkopenempty'}
	local good = {'Base.Bullets44Box','Base.Bullets9mmBox','Base.ShotgunShellsBox','Hydrocraft.HCColoredwire','Hydrocraft.HCColander','Base.LightBulb','Hydrocraft.HCSyringeempty','Base.Coldpack','Base.RubberBand','Base.Screws','Base.CordlessPhone','Base.KitchenKnife','Hydrocraft.HCHairdryer','farming.GardeningSprayEmpty','Hydrocraft.HCTampon','Base.Headphones','Hydrocraft.HCClothespin','Hydrocraft.HCBungeecord','Hydrocraft.HCWeldinghose','Hydrocraft.HCRubberhose','Radio.CDplayer','Base.Needle','Hydrocraft.HCBoxphoto','Hydrocraft.HCBoxgarden','Hydrocraft.HCBoxpet','Hydrocraft.HCBoxelectronic','Hydrocraft.HCBoxlab','Hydrocraft.HCMysteryseedspacket','Hydrocraft.HCCircuitboarduseless','Hydrocraft.HCElectronicparts01','Hydrocraft.HCColoredwire','Base.Book','Hydrocraft.HCFlourempty','Hydrocraft.HCRiceempty','Hydrocraft.HCSugarempty','Hydrocraft.HCVinegarempty','Hydrocraft.HCGlueempty','Hydrocraft.HCValve','Hydrocraft.HCXmasgift'}

    player:getInventory():AddItems("Base.ScrapMetal",ZombRand(3))

	if luck <= 12 then -- found junk
		junkFinds = junk;
	else 
		junkFinds = good;
	end

	--for _ in pairs(junkFinds) do count = count + 1 end
	local index = ZombRand(#junkFinds)+1
	player:getInventory():AddItem(junkFinds[index])

end
	
function hcjunksearchmedium(items, result, player)

	local mediumJunk = {
		"Base.EngineParts",
		"Base.ModernCarMuffler1",
		"Base.ModernCarMuffler2",
		"Base.ModernCarMuffler3",
		"Base.NormalCarMuffler1",
		"Base.NormalCarMuffler2",
		"Base.NormalCarMuffler3",
		"Base.OldCarMuffler1",
		"Base.OldCarMuffler2",
		"Base.OldCarMuffler3",
		"Base.GloveBox1",
		"Base.GloveBox2",
		"Base.GloveBox3",
		"Base.CarBattery1",
		"Base.CarBattery2",
		"Base.CarBattery3",
		"Base.BigGasTank1",
		"Base.BigGasTank2",
		"Base.BigGasTank3",
		"Base.NormalGasTank1",
		"Base.NormalGasTank2",
		"Base.NormalGasTank3",
		"Base.SmallGasTank1",
		"Base.SmallGasTank2",
		"Base.SmallGasTank3",
		"Base.ModernSuspension1",
		"Base.ModernSuspension2",
		"Base.ModernSuspension3",
		"Base.NormalSuspension1",
		"Base.NormalSuspension2",
		"Base.NormalSuspension3",
		"Base.ModernBrake1",
		"Base.ModernBrake2",
		"Base.ModernBrake3",
		"Base.NormalBrake1",
		"Base.NormalBrake2",
		"Base.NormalBrake3",
		"Base.OldBrake1",
		"Base.OldBrake2",
		"Base.OldBrake3",
		"Base.CarBatteryCharger",
		"Base.OldTire1",
		"Base.OldTire2",
		"Base.OldTire3",
		"Base.NormalTire1",
		"Base.NormalTire2",
		"Base.NormalTire3",
		"Base.ModernTire1",
		"Base.ModernTire2",
		"Base.ModernTire3",
		"Hydrocraft.HCDrillcordless",
		"Hydrocraft.HCComputerPSU",
		"Hydrocraft.HCLever",
		"Hydrocraft.HCBicyclewheel",
		"Hydrocraft.HCWiper",
		"Hydrocraft.HCRustyshards",
		"Hydrocraft.HCXmasgift",
		"Hydrocraft.HCRadiator",
		"Hydrocraft.HCOilfilter",
		"Hydrocraft.HCRustyshards",
		"Hydrocraft.HCFanbelt",
		"Hydrocraft.HCDrumbreak",
		"Hydrocraft.HCClutch",
		"Hydrocraft.HCCamshaft",
		"Hydrocraft.HCBreakpads",
		"Hydrocraft.HCAirfilter",
		"Hydrocraft.HCXmasgift",
		"Hydrocraft.HCChain",
		"Hydrocraft.HCDynamo",
		"Hydrocraft.HCChickenwire",
		"Base.Pipe",
		"Hydrocraft.HCBubblewrap",
		"Base.Speaker",
		"Base.Kettle",
		"Hydrocraft.HCMetalbox",
		"Hydrocraft.UmbrellaClosed",
		"Hydrocraft.HCCooler",
		"Hydrocraft.HCMag",
		"Base.Pot",
		"Base.BakingPan",
		"Hydrocraft.HCPowercord",
		'Hydrocraft.HCPlasticbin',
		"Hydrocraft.HCJuicer2",
		"Hydrocraft.HCToaster",
		"Hydrocraft.HCBlenderdead",
		"Hydrocraft.HCRicecookerdead",
		"Hydrocraft.HCXmaslights",
		"Hydrocraft.HCPlasticbin",
		"Hydrocraft.HCPlasticbin2",
		"Hydrocraft.HCRaccoonfemale",
		"Hydrocraft.HCRaccoonmale",	
	}
	local index = ZombRand(#mediumJunk) + 1
	player:getInventory():AddItem( mediumJunk[index] )

end


function hcjunksearchlarge(items, result, player)

	local largeJunk = {
		"Base.SportCarSeat1",
		"Base.SportCarSeat2",
		"Base.SportCarSeat3",
		"Base.BigCarSeat1",
		"Base.BigCarSeat2",
		"Base.BigCarSeat3",
		"Base.NormalCarSeat1",
		"Base.NormalCarSeat2",
		"Base.NormalCarSeat3",
		"Base.TrunkDoor1",
		"Base.TrunkDoor2",
		"Base.TrunkDoor3",
		"Base.EngineDoor1",
		"Base.EngineDoor2",
		"Base.EngineDoor3",
		"Base.RearCarDoorDouble1",
		"Base.RearCarDoorDouble2",
		"Base.RearCarDoorDouble3",
		"Base.RearCarDoor1",
		"Base.RearCarDoor2",
		"Base.RearCarDoor3",
		"Base.FrontCarDoor1",
		"Base.FrontCarDoor2",
		"Base.FrontCarDoor3",
		"Base.BigTrunk1",
		"Base.BigTrunk2",
		"Base.BigTrunk3",
		"Base.NormalTrunk1",
		"Base.NormalTrunk2",
		"Base.NormalTrunk3",
		"Base.SmallTrunk1",
		"Base.SmallTrunk2",
		"Base.SmallTrunk3",
		"Hydrocraft.HCComputer",
		"Hydrocraft.HCBarrelblueempty",
		"Hydrocraft.HCSteelbeam",
		"Hydrocraft.HCToywagon",
		"Hydrocraft.HCJunkmicro",
		"Hydrocraft.HCSteelpipe",
		"Hydrocraft.HCLargesheetmetal",
		"Hydrocraft.HCBarrelmetalempty",
		"Hydrocraft.HCJunkbicycle",
		"Hydrocraft.HCSteelsheet",
		"Hydrocraft.HCSteelsheetlarge",
		"Hydrocraft.HCJunkmicro",
		"Hydrocraft.HCFishtank",
		"Hydrocraft.HCVacuum",
		"Hydrocraft.HCVac",
		"Hydrocraft.HCShopvac",
		"Hydrocraft.HCPrinter",
		"Hydrocraft.HCComputermonitor",
		"Hydrocraft.HCFaxmachine",
		"Hydrocraft.HCScaner",
		"Hydrocraft.HCShoppingcart",
		"Hydrocraft.HCToywagon",
		"Hydrocraft.HCIcechest",
		"Base.EmptyPetrolCan",
		"Base.PropaneTank"
	}

	local index = ZombRand(#largeJunk) + 1
	local fullType = largeJunk[index]
	local item = InventoryItemFactory.CreateItem(fullType)

	--Needed so the tank is empty, rather than full.
	if fullType == "Base.PropaneTank" then
		item:setUsedDelta(0.0)
	end

	player:getInventory():AddItem(item)

end

function hcjunksearchmagnet(items, result, player)

	local magnetJunk = {
		"Hydrocraft.HCWaterheater",
		"Hydrocraft.HCBedsprings",
		"Hydrocraft.HCRadiator2",
		"Hydrocraft.HCJunkdryer",
		"Hydrocraft.HCJunktv",
		"Hydrocraft.HCJunkfridge",
		"Hydrocraft.HCJunktredmill",
		"Hydrocraft.HCJunkwash",
		"Hydrocraft.HCJunkbicycle",
		"Hydrocraft.HCBedsprings", --TODO: duplicate, no idea why, remove?
	}

	local inv = player:getInventory()
	
	local index = ZombRand(#magnetJunk) + 1
	inv:AddItem( magnetJunk[index] )
	inv:AddItem("Hydrocraft.HCBatteryhugedead") --TODO: Why?  We could just make the magnet require a nearby generator instead

end

-- Randomize findings for scavange.
function hcmetalsearch(items, result, player)

	local trash = {'Hydrocraft.HCJunkbicycle','Hydrocraft.HCHedgetrimmer','Hydrocraft.HCBottleopener','Hydrocraft.HCWirehanger','Base.ElectronicsScrap ','Hydrocraft.HCWhippedcreamcanempty','Hydrocraft.HCPop6trash','Hydrocraft.HCCannedspaghettiringsopenempty','Hydrocraft.HCCannedspaghettiringsopenempty','Hydrocraft.HCCannedmacncheeseopenempty','Hydrocraft.HCCannedgovermentporkopenempty','Hydrocraft.HCCannedfruitcocktailopenempty','Hydrocraft.HCCannedchickenbreastopenempty','Hydrocraft.HCCannedcheesesauceopenempty','Hydrocraft.HCCanbangedupopenempty','Hydrocraft.HCRustyshards','Hydrocraft.HCInkroller','Base.VideoGame','Base.JarLid','Hydrocraft.HCTincan','Hydrocraft.HCRustyshards','Hydrocraft.HCBatterysmalldead','Hydrocraft.HCBatterymediumdead','Hydrocraft.HCBatterylargedead','Base.Extinguisher','Base.Paperclip'}
	local good = {'Hydrocraft.HCFile','Hydrocraft.HCClothespin','Base.Nails','Base.Screws','Base.BarbedWire','Base.Wire','Base.Needle','Base.Bullets9mm','Base.ShotgunShells','Base.223Bullets','Base.308Bullets','Base.Screwdriver','Base.Hammer','Base.Saw','Base.Hinge','Base.Doorknob','Base.Pipe','Base.SheetMetal','farming.GardeningSprayEmpty','farming.WateredCan','Base.Shovel2','Base.Tweezers','Hydrocraft.HCWrench','Hydrocraft.HCPliers','Hydrocraft.HCJackknife','Base.Toolbox','Base.Rake','Hydrocraft.HCMedicalbox','Hydrocraft.HCSurvivalaxe','Hydrocraft.HCSteelpipe','Hydrocraft.HCCopperpipe','Hydrocraft.HCChickenwire','Base.Padlock','Hydrocraft.HCDrillhead','Base.PickAxe','Base.WeldingMask ','Base.BlowTorch ','Hydrocraft.HCBoxcutter','Hydrocraft.HCCalculator ','Hydrocraft.HCBatterysmall','Hydrocraft.HCBatterymedium ','Hydrocraft.HCBatterylarge ','Hydrocraft.HCBatteryhuge ','Base.Battery','Hydrocraft.HCMeatcleaver','Hydrocraft.HCMeteorite','Hydrocraft.HCIronore ','Radio.CDplayer','Base.Lighter ','Hydrocraft.HCPipebender','Hydrocraft.HCGlasscutter','Hydrocraft.HCChiselhead','Hydrocraft.HCSawcircularblade','Hydrocraft.HCSawcircularblade','Base.Jack','Base.Wrench','Base.LugWrench','Base.TirePump'}
	local nice = {'Hydrocraft.HCManometer','Hydrocraft.HCMagnetite','Hydrocraft.HCValve','Hydrocraft.HCShears','Base.EngineParts','Hydrocraft.HCMagnetite','Hydrocraft.HCChain','Hydrocraft.HCDogwhistle'}
	local auger = {'Hydrocraft.HCAuger'}

	local skill = player:getPerkLevel(Perks.PlantScavenging)
	local count = 0
	local ItemNr = 0
	local luck = ZombRand(20) + skill
	local luck2 = ZombRand(10)

	if luck >= 14 then -- found nothing.

		if luck <= 15  then
			print ("I found trash")
			for _ in pairs(trash) do count = count + 1 end
			ItemNr = ZombRand(count)+1

			player:getInventory():AddItem(trash[ItemNr])

		elseif luck <= 27  then
			print ("I found something useful")
			for _ in pairs(good) do count = count + 1 end
			ItemNr = ZombRand(count) + 1
			player:getInventory():AddItem(good[ItemNr])

		elseif luck <= 28  then
			print ("I was very lucky")
			for _ in pairs(nice) do count = count + 1 end
			ItemNr = ZombRand(count) + 1
			player:getInventory():AddItem(nice[ItemNr])

		else
			if luck2 == 0 then
				print ("I was really lucky")
				player:getInventory():AddItem(auger[1])
			else 
				print ("I was very lucky")
				for _ in pairs(nice) do count = count + 1 end
				ItemNr = ZombRand(count)+1
				player:getInventory():AddItem(nice[ItemNr])
			end
		end
	end

end
