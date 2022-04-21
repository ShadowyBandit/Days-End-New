Events.OnGameBoot.Add(function()
	if getActivatedMods():contains("ItemTweakerAPI") then
		require("ItemTweaker_Core");
	else return end

	-- Change formal shirt slots
	TweakItem("Base.Tshirt_PoliceBlue","BodyLocation", "ShortSleeveShirt");
	TweakItem("Base.Tshirt_PoliceGrey","BodyLocation", "ShortSleeveShirt");


	-- OPEN JACKETS
	local currentItem = "Base.Jacket_WhiteTINT";
	
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_WhiteOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_Fireman";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_FiremanOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_Chef";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_ChefOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_ArmyCamoDesert";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_ArmyCamoDesertOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_ArmyCamoGreen";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_ArmyCamoGreenOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_Police";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_PoliceOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_Ranger";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_RangerOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_CoatArmy";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_CoatArmyOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_Varsity";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_VarsityOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");


	local currentItem = "Base.JacketLong_Doctor";
	TweakItem(currentItem,"ClothingItemExtra", "JacketLong_DoctorOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.JacketLong_Random";
	TweakItem(currentItem,"ClothingItemExtra", "JacketLong_RandomOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.JacketLong_Santa";
	TweakItem(currentItem,"ClothingItemExtra", "JacketLong_SantaOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.JacketLong_SantaGreen";
	TweakItem(currentItem,"ClothingItemExtra", "JacketLong_SantaGreenOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");


	local currentItem = "Base.Jacket_Black";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_BlackOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_LeatherWildRacoons";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_LeatherWildRacoonsOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_LeatherIronRodent";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_LeatherIronRodentOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

	local currentItem = "Base.Jacket_LeatherBarrelDogs";
	TweakItem(currentItem,"ClothingItemExtra", "Jacket_LeatherBarrelDogsOPEN");
	TweakItem(currentItem,"ClothingItemExtraOption", "OpenJacket");
	TweakItem(currentItem,"clothingExtraSubmenu", "CloseJacket");

end)