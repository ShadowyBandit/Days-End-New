require "TimedActions/ISBaseTimedAction"

-- EXERCISE TRAIT EFFECTS
function ISFitnessAction:exeLooped()
    player = self.character;
    -- If the player has the trait "Active" the negative moods are reduced when when doing exercise
    -- If the player has the trait "Sedentary" extra pain is added the the bodyparts based on the exercise
    if self.exercise == "squats" then
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "UpperLeg_L", ZombRand(7));
            DTapplyPain(player, 0, "UpperLeg_R", ZombRand(7));
            DTapplyPain(player, 0, "LowerLeg_L", ZombRand(7));
            DTapplyPain(player, 0, "LowerLeg_R", ZombRand(7));
        end
    elseif self.exercise == "pushups" then
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(7));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(7));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(7));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(7));
        end
    elseif self.exercise == "situp" then
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "Torso_Lower", ZombRand(15));
        end
    elseif self.exercise == "burpees" then
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "UpperLeg_L", ZombRand(5));
            DTapplyPain(player, 0, "UpperLeg_R", ZombRand(5));
            DTapplyPain(player, 0, "LowerLeg_L", ZombRand(5));
            DTapplyPain(player, 0, "LowerLeg_R", ZombRand(5));
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(5));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(5));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(5));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(5));
        end
    elseif self.exercise == "barbellcurl" then
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(10));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(10));
        end
    elseif self.exercise == "dumbbellpress" then
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(10));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(13));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(13));
        end
    elseif self.exercise == "bicepscurl" then
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(10));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(13));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(13));
        end
    end
    if player:HasTrait("PhysicallyActive") then
        DTdecreaseStress(player, 0.05);
        DTdecreaseStressFromCigarettes(player, 0.05);
        DTdecreaseUnhappyness(player, 0.5);
        DTdecreaseBoredom(player, 5);
    end
	print('pissballs')
	--funny hack
	if self.repnb == nil then        
		self.repnb = 0   
	end
	self.repnb = self.repnb + 1;
	self.fitness:exerciseRepeat();
	self:setFitnessSpeed();
end

function rainTraits(player)
    local climateManager = getClimateManager();
    local rainIntensity = climateManager:getRainIntensity();
    if player:isOutside() and rainIntensity > 0 then     
        -- BASED ON THE RAIN LEVELS THE EFFECTS WILL BE STRONGER OR WEAKER
        if rainIntensity > 0 and rainIntensity <= 0.30 then
            if player:HasTrait("Pluviophile") then
                DTdecreaseStress(player, 0.00003);
                DTdecreaseUnhappyness(player, 0.002);
            elseif player:HasTrait("Pluviophobia") then
                DTincreaseStress(player, 0.00003);
                DTincreaseUnhappyness(player, 0.002);
            else
				--nothing!
            end
        elseif rainIntensity > 0.30 and rainIntensity <= 0.50 then
            if player:HasTrait("Pluviophile") then
                DTdecreaseStress(player, 0.00004);
                DTdecreaseUnhappyness(player, 0.003);
            elseif player:HasTrait("Pluviophobia") then
                DTincreaseStress(player, 0.00004);
                DTincreaseUnhappyness(player, 0.003);
            else
                --nothing!
            end
        elseif rainIntensity > 0.50 and rainIntensity <= 0.70 then
            if player:HasTrait("Pluviophile") then
                DTdecreaseStress(player, 0.00005);
                DTdecreaseUnhappyness(player, 0.004);
            elseif player:HasTrait("Pluviophobia") then
                DTincreaseStress(player, 0.00005);
                DTincreaseUnhappyness(player, 0.004);
            else
                --nothing!
            end 
        elseif rainIntensity > 0.70 and rainIntensity <= 0.90 then
            if player:HasTrait("Pluviophile") then
                DTdecreaseStress(player, 0.00006);
                DTdecreaseUnhappyness(player, 0.005);
            elseif player:HasTrait("Pluviophobia") then
                DTincreaseStress(player, 0.00006);
                DTincreaseUnhappyness(player, 0.005);
            else
                --nothing!
            end 
        elseif rainIntensity > 0.90 and rainIntensity <= 1 then 
            if player:HasTrait("Pluviophile") then
                DTdecreaseStress(player, 0.00007);
                DTdecreaseUnhappyness(player, 0.006);
            elseif player:HasTrait("Pluviophobia") then
                DTincreaseStress(player, 0.00007);
                DTincreaseUnhappyness(player, 0.006);
            else
				--nothing!
            end
        end
    elseif not player:isOutside() and rainIntensity > 0 then
		if player:HasTrait("Pluviophile") then
            DTdecreaseStress(player, 0.00002);
			DTdecreaseUnhappyness(player, 0.001);
        elseif player:HasTrait("Pluviophobia") then
			DTincreaseStress(player, 0.00002);
			DTincreaseUnhappyness(player, 0.001);
        else
			--nothing!
        end
	end
end
Events.OnPlayerUpdate.Add(rainTraits);