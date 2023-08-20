if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Fortis nitride"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "10% less overall recoil"
}
ATTACHMENT.Icon = "entities/fo4_hb_fortis_nitride.png"
ATTACHMENT.ShortName = "COMP"

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
        [7] =  2
    },
        ["Bodygroups_W"] = {
        [6] =  2
    },
	["Primary"] = {
		["KickUp"] = function(wep, stat) return stat * 0.8 end,
		["KickDown"] = function(wep, stat) return stat * 0.8 end,
		["KickHorizontal"] = function(wep, stat) return stat * 0.8 end,

		["Spread"] = function(wep, stat) return stat * 0.95 end,
		["IronAccuracy"] = function(wep, stat) return stat * 0.95 end,
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_revolver",
	["MuzzleAttachmentMod"] = function(wep, stat) return wep.MuzzleAttachmentComp or stat end,
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
