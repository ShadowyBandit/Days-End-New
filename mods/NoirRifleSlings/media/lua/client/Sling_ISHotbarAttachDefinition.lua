if not ISHotbarAttachDefinition then
    return
end

local slot = {
	type = "Sling",
	name = "Sling",
	animset = "belt left",
	attachments = {
		Rifle = "SlingRifle",
	},
}
table.insert(ISHotbarAttachDefinition, slot);

slot = {
	type = "SlingAlt",
	name = "Sling",
	animset = "belt left",
	attachments = {
		Rifle = "SlingRifle2",
	},
}
table.insert(ISHotbarAttachDefinition, slot);

slot = {
	type = "SlingAlt2",
	name = "Sling",
	animset = "belt left",
	attachments = {
		Rifle = "SlingRifle3",
	},
}
table.insert(ISHotbarAttachDefinition, slot);