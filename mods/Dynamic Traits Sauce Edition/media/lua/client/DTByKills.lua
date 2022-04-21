function traitsGainsByKills(zombie)
    for playerIndex = 0, getNumActivePlayers()-1 do
        local player = getSpecificPlayer(playerIndex);
		if player:getZombieKills() >= 500 and player:getZombieKills() <= 600 then
			if player:HasTrait("Cowardly") then
				player:getTraits():remove("Cowardly");
			end
		elseif player:getZombieKills() >= 1000 and player:getZombieKills() <= 1100 and not player:HasTrait("Brave") then
			player:getTraits():add("Brave");
		elseif player:getZombieKills() >= 1500 and player:getZombieKills() <= 1600 then
			if player:HasTrait("Agoraphobic") then
				player:getTraits():remove("Agoraphobic");
			end
			if player:HasTrait("Claustophobic") then
				player:getTraits():remove("Claustophobic");
			end
			if player:HasTrait("Hemophobic") then
				player:getTraits():remove("Hemophobic");
			end
		elseif player:getZombieKills() >= 2000 and player:getZombieKills() <= 2100 and player:HasTrait("Pacifist")then
			player:getTraits():remove("Pacifist");
		elseif player:getZombieKills() >= 2500 and player:getZombieKills() <= 2600 and not player:HasTrait("Desensitized") then
			if not player:HasTrait("Paranoid") then
				player:getTraits():remove("Brave");
				player:getTraits():add("Desensitized");
			end
		end
    end
end
Events.OnZombieDead.Add(traitsGainsByKills);