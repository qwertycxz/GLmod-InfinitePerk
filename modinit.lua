return {
	alias = 'InfinitePerk',
	description = 'No more perk selecting limit!',
	OnLoad = function()
		for i in ipairs(PERK_TIER_EQUIP_LIMITS) do
			PERK_TIER_EQUIP_LIMITS[i] = 0
		end
		local index = 0
		for _, graft in pairs(Content.internal.GRAFTS) do
			if graft.type == GRAFT_TYPE.PERK then
				index = index + 1
				PERK_SLOT_UNLOCK_THRESHOLDS[index] = 0
				PERK_TIER_EQUIP_LIMITS[graft.tier] = PERK_TIER_EQUIP_LIMITS[graft.tier] + 1
			end
		end
	end,
	previewImagePath = 'preview.png',
	title = 'Infinite Perk',
	version = '0.1.5',
}
