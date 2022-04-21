-- DYNAMIC TRAITS INITIALIZATIONS
function DTmodDataInitialization(playernum, character)
    local player = getSpecificPlayer(playernum);

    -- TRAITS CHANGE
    if player:HasTrait("PhysicallyActive2") then
        player:getTraits():remove("PhysicallyActive2");
        player:getTraits():add("PhysicallyActive");
    end
    if player:HasTrait("Handy2") then
        player:getTraits():remove("Handy2");
        player:getTraits():add("Handy");
    end
    -- INITIALIZATION FOR SMOKER TRAIT
    if player:getModData().DTdaysSinceLastSmoke == nil then
        player:getModData().DTdaysSinceLastSmoke = 0;
    end
    if player:getModData().DTtimesinceLastKill == nil then
        player:getModData().DTtimesinceLastKill = 0;
    end
    -- INITIALIZATION FOR ALCOHOLIC TRAIT
    if player:getModData().DThoursSinceLastDrink == nil then
        player:getModData().DThoursSinceLastDrink = 0;
    end
    if player:getModData().DTthresholdToObtainAlcoholic == nil then
        player:getModData().DTthresholdToObtainAlcoholic = 0;
    end
end
Events.OnCreatePlayer.Add(DTmodDataInitialization);
