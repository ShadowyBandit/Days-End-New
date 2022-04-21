local onKeyPressed = function(key)
	local source = getPlayer(); if not source then return end
	if getPlayer():getAccessLevel()=="Admin" then
		if key == Keyboard.KEY_NUMPAD0 then
			sendClientCommand("Test", "SummonHeli", {heliType = "jet"});
			print("Client")
		elseif key == Keyboard.KEY_NUMPAD1 then
			sendClientCommand("Test", "SummonHeli", {heliType = "police"});
			print("Client")
		elseif key == Keyboard.KEY_NUMPAD2 then
			sendClientCommand("Test", "SummonHeli", {heliType = "news_chopper"});
			print("Client")
		elseif key == Keyboard.KEY_NUMPAD3 then
			sendClientCommand("Test", "SummonHeli", {heliType = "military"});
			print("Client")
		elseif key == Keyboard.KEY_NUMPAD4 then
			sendClientCommand("Test", "SummonHeli", {heliType = "FEMA_drop"});
			print("Client")
		elseif key == Keyboard.KEY_NUMPAD5 then
			sendClientCommand("Test", "SummonHeli", {heliType = "samaritan_drop"});
			print("Client")
		elseif key == Keyboard.KEY_NUMPAD6 then
			sendClientCommand("Test", "SummonHeli", {heliType = "survivor_heli"});
			print("Client")
		elseif key == Keyboard.KEY_NUMPAD7 then
			sendClientCommand("Test", "SummonHeli", {heliType = "raiders"});
			print("Client")
		end
	end
end

Events.OnKeyPressed.Add(onKeyPressed);