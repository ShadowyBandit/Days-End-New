require "TimedActions/ISBaseTimedAction"
--[[
-- SMOKER TRAIT
function smokerTrait(player)
    for playerIndex = 0, getNumActivePlayers()-1 do
        local player = getSpecificPlayer(playerIndex);
        if player:HasTrait("Smoker") then
            local currentTimeSinceLastSmoke = player:getTimeSinceLastSmoke();
            if currentTimeSinceLastSmoke == 10 then
                player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke + 1;
                if ZombRand(25) == 0 then
                    player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke + DTluckyUnluckyModifier(player, 7);
                end
            else
                player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke - 5;
                if ZombRand(25) == 0 then
                    player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke + DTluckyUnluckyModifier(player, 7);
                end
            end
            -- CHECK THE VALUE TO KEEP IT INTO THE LIMITS
            if player:getModData().DTdaysSinceLastSmoke < 0 then
                player:getModData().DTdaysSinceLastSmoke = 0;
            end
            -- CHECK IF THE PLAYER ACHIEVED THE REQUIREMENTS TO REMOVE SMOKER
            if player:getModData().DTdaysSinceLastSmoke >= 720 then
                player:setTimeSinceLastSmoke(0);
                player:getStats():setStressFromCigarettes(0);
                player:getStats():setStress(1);
                player:getTraits():remove("Smoker");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Smoker"), false, HaloTextHelper.getColorGreen());
            end
        end
        print("player:getModData().DTdaysSinceLastSmoke: " .. player:getModData().DTdaysSinceLastSmoke);
    end
end
Events.EveryHours.Add(smokerTrait);

-- ALCOHOLIC TRAIT
function alcoholicTrait()
    for playerIndex = 0, getNumActivePlayers()-1 do
        local player = getSpecificPlayer(playerIndex);
        local currentDrunkenness = player:getStats():getDrunkenness();
        -- Drunkenness is greater than 0 which means the player recently had a drink.
        if currentDrunkenness > 0 then
            player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink - 72;
            player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic + 72;
            if ZombRand(25) == 0 then
                player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink + DTluckyUnluckyModifier(player, 20);
                player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic + DTluckyUnluckyModifier(player, 12);
            end
        -- Drunkenness is equal to 0 which means the player recently haven't had a drink.
        else
            player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink + 1;
            player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic - 1;
            if ZombRand(25) == 0 then
                player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink + DTluckyUnluckyModifier(player, 7);
                player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic - DTluckyUnluckyModifier(player, 7);
            end
            -- If the player has the Alcoholic trait and haven't drinked for the latest 48 hours the effects starts.
            if player:HasTrait("Alcoholic") and player:getModData().DThoursSinceLastDrink >= 48 then
                -- STRESS
                DTincreaseStress(player, 0.15);
                -- UNHAPPYNESS
                DTincreaseUnhappyness(player, 7);
                -- FATIGUE
                DTincreaseFatigue(player, ZombRand(3), 0.05);
                -- HEADACHE
                DTapplyPain(player, ZombRand(5), "Head", ZombRand(75));
                -- POISON
                DTincreasePoison(player, ZombRand(7), ZombRand(40));
            end
        end
        -- CHECK BOTH VALUES TO KEEP THEM INTO THE LIMITS
        if player:getModData().DThoursSinceLastDrink > 750 then
            player:getModData().DThoursSinceLastDrink = 750;
        elseif player:getModData().DThoursSinceLastDrink < 0 then
            player:getModData().DThoursSinceLastDrink = 0;
        end
        if player:getModData().DTthresholdToObtainAlcoholic > 750 then
            player:getModData().DTthresholdToObtainAlcoholic = 750;
        elseif player:getModData().DTthresholdToObtainAlcoholic < 0 then
            player:getModData().DTthresholdToObtainAlcoholic = 0;
        end
        -- CHECK IF THE PLAYER ACHIEVED THE REQUIREMENTS TO REMOVE/GAIN ALCOHOLIC
        if player:getModData().DThoursSinceLastDrink >= 504 and player:HasTrait("Alcoholic") then
            player:getTraits():remove("Alcoholic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Alcoholic"), false, HaloTextHelper.getColorGreen());
            player:getModData().DTthresholdToObtainAlcoholic = 0;
        end
        if player:getModData().DTthresholdToObtainAlcoholic >= 750 and not player:HasTrait("Alcoholic") then
            player:getTraits():add("Alcoholic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Alcoholic"), true, HaloTextHelper.getColorRed());
        end
        print("player:getModData().DThoursSinceLastDrink: " .. player:getModData().DThoursSinceLastDrink);
        print("player:getModData().DTthresholdToObtainAlcoholic: " .. player:getModData().DTthresholdToObtainAlcoholic);
    end
end
Events.EveryHours.Add(alcoholicTrait);]]
