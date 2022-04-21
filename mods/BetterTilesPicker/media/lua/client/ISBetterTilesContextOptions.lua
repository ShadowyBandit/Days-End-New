local function BTPinit(worldObjects,player)
	local ui = ISTilesPickerDebugUI:new(0, 0, getPlayer(player))
	ui:initialise();
	ui:addToUIManager();


end

local function BTPrightclickground(player, context, worldObjects)
	if isClient() and getPlayer():getAccessLevel()=="Admin" then
		context:addOption("TilesPicker", worldObjects,BTPinit,player)
	elseif not isClient() then
		context:addOption("TilesPicker", worldObjects,BTPinit,player)
		
	end
		
	
end
Events.OnFillWorldObjectContextMenu.Add(BTPrightclickground)