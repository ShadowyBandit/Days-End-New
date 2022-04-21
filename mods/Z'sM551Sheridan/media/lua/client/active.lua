function infiniteDura(player, vehicle, args)
    local vehicle = player.getVehicle and player:getVehicle() or nil
	if (vehicle and string.find( vehicle:getScriptName(), "m551" )) then
		local gastank = vehicle:getPartById("GasTank")
		if gastank:getCondition() < 100 then
			gastank:setCondition(100)
		end
		
		local engine = vehicle:getPartById("Engine")
		if engine:getCondition() < 100 then
			engine:setCondition(100)
		end
		
		local headlightL = vehicle:getPartById("HeadlightLeft")
		if headlightL:getCondition() < 100 then
			headlightL:setCondition(100)
		end
		
		local headlightR = vehicle:getPartById("HeadlightRight")
		if headlightR:getCondition() < 100 then
			headlightR:setCondition(100)
		end
	end
end

--[[function rotate(player, vehicle, args)
    local vehicle = player.getVehicle and player:getVehicle() or nil
	if (vehicle and string.find( vehicle:getScriptName(), "m551" )) then
		local turret = vehicle:getPartById("Turret")
		print(turret:getScriptModelById​("Default"):getOffset():get​(0))
	end
end]]

function armor(attacker, player, weapon, damage)
    local vehicle = player.getVehicle and player:getVehicle() or nil
    if (vehicle and string.find( vehicle:getScriptName(), "m551" )) then
        player:setAvoidDamage(true)
    end
end

Events.OnWeaponHitCharacter.Add(armor)
Events.OnPlayerUpdate.Add(infiniteDura)
--Events.OnPlayerUpdate.Add(rotate)

