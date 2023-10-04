MountModData( "InfinitePerk" )
return {
	alias = "InfinitePerk",
	description = "Perk selecting hasn't limit any more!",
	OnLoad = function()
		for i in pairs(PERK_TIER_EQUIP_LIMITS) do
			PERK_TIER_EQUIP_LIMITS[i] = 0
		end
		local num = 1
		for i, graft in pairs(Content.GetAllGrafts()) do
			if graft.type == GRAFT_TYPE.PERK then
				PERK_SLOT_UNLOCK_THRESHOLDS[num] = 0
				num = num + 1
				PERK_TIER_EQUIP_LIMITS[graft.tier] = PERK_TIER_EQUIP_LIMITS[graft.tier] + 1
			end
		end
	end,
	previewImagePath = "preview.png",
	title = "Infinite Perk",
	version = "0.1.4",
}
