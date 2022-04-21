require 'Items/ProceduralDistributions'

MoreDice = MoreDice or {};

-- Dice Bag
MoreDice.tab_addMagProcedural_DiceBag  = function(x,count)
    ProceduralDistributions = ProceduralDistributions or {};
    ProceduralDistributions.list = ProceduralDistributions.list or {};
    ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
    ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceBag");
    table.insert(ProceduralDistributions.list[x].items, count);      
end
-- DiceD
MoreDice.tab_addMagProcedural_DiceD  = function(x,count)
    ProceduralDistributions = ProceduralDistributions or {};
    ProceduralDistributions.list = ProceduralDistributions.list or {};
    ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
    ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceD4");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceD6");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceD8");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceD10");  
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceD12");
    table.insert(ProceduralDistributions.list[x].items, count);  
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceD20");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.DiceD100");
    table.insert(ProceduralDistributions.list[x].items, count);       
end

MoreDice.tab_addMagProcedural_DiceBag("BarCounterMisc",0.2);
MoreDice.tab_addMagProcedural_DiceBag("ClassroomMisc",0.2);
MoreDice.tab_addMagProcedural_DiceBag("CrateRandomJunk",0.1);
MoreDice.tab_addMagProcedural_DiceBag("CrateToys",2);
MoreDice.tab_addMagProcedural_DiceBag("DaycareCounter",0.3);
MoreDice.tab_addMagProcedural_DiceBag("DaycareShelves",0.3);
MoreDice.tab_addMagProcedural_DiceBag("GigamartSchool",1);
MoreDice.tab_addMagProcedural_DiceBag("GigamartToys",3);
MoreDice.tab_addMagProcedural_DiceBag("KitchenRandom",0.5);
MoreDice.tab_addMagProcedural_DiceBag("LibraryCounter",1);
MoreDice.tab_addMagProcedural_DiceBag("LivingRoomShelf",0.5);
MoreDice.tab_addMagProcedural_DiceBag("PrisonCellRandom",1);
MoreDice.tab_addMagProcedural_DiceBag("WardrobeChild",0.5);

MoreDice.tab_addMagProcedural_DiceD("BarCounterMisc",0.5);
MoreDice.tab_addMagProcedural_DiceD("ClassroomMisc",0.5);
MoreDice.tab_addMagProcedural_DiceD("CrateRandomJunk",0.5);
MoreDice.tab_addMagProcedural_DiceD("CrateToys",5);
MoreDice.tab_addMagProcedural_DiceD("DaycareCounter",0.5);
MoreDice.tab_addMagProcedural_DiceD("DaycareShelves",0.5);
MoreDice.tab_addMagProcedural_DiceD("GigamartSchool",2);
MoreDice.tab_addMagProcedural_DiceD("GigamartToys",5);
MoreDice.tab_addMagProcedural_DiceD("KitchenRandom",0.5);
MoreDice.tab_addMagProcedural_DiceD("LibraryCounter",2);
MoreDice.tab_addMagProcedural_DiceD("LivingRoomShelf",0.5);
MoreDice.tab_addMagProcedural_DiceD("PrisonCellRandom",0.5);
MoreDice.tab_addMagProcedural_DiceD("WardrobeChild",1);