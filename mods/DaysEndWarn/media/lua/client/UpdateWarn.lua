Events.EveryTenMinutes.Add(function(player, args)
	if (os.date ("*t").min == 50 and os.date ("*t").hour%6 == 4) then
        getPlayer():addLineChatElement("RESTART IN 10 MINUTES", 1, 0, 0);
	end
	
	if (os.date ("*t").min == 55 and os.date ("*t").hour%6 == 4) then
        getPlayer():addLineChatElement("RESTART IN 5 MINUTES", 1, 0, 0);
	end
end)