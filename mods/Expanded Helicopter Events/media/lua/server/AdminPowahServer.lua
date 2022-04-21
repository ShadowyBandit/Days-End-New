require "ExpandedHelicopter00f_WeatherImpact"
require "ExpandedHelicopter00e_EHEGlobalModData"
require "ExpandedHelicopter00a_Util"
require "ExpandedHelicopter06_EventScheduler"
require "ExpandedHelicopter09_EasyConfigOptions"
require "ExpandedHelicopter02a_Presets"
require "ExpandedHelicopter01a_MainVariables"

local Commands = {};
Commands.Test = {};
adminSpawnedtype = "jet";

Commands.Test.SummonHeli = function(player, args)
	--check if the event will occur
	local willFly,_ = eHeliEvent_weatherImpact()
	local foundTarget = eHelicopter:findTarget(nil, "eHeliEvent_engage")

	if willFly and foundTarget then
		---@type eHelicopter
		local heli = getFreeHelicopter(args.heliType)
		if heli then
			heli:launch(foundTarget)
			print("Server: Launched")
			adminSpawned = args.heliType
		end
	end
end

local onClientCommand = function(module, command, player, args)
	if Commands[module] and Commands[module][command] then
	Commands[module][command](player, args);
	end
end

Events.OnClientCommand.Add(onClientCommand);