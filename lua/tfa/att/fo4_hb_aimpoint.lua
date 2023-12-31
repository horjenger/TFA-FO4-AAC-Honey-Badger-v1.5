if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Aimpoint sight"
ATTACHMENT.ShortName = "AIMPOINT"
ATTACHMENT.Icon = "entities/fo4_hb_aimpoint.png"
ATTACHMENT.Description = {

}

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
        [3] =  0,
    },
        ["Bodygroups_W"] = {
        [2] =  0,
    },
	["VElements"] = {
		["sight_aimpoint"] = {
			["active"] = true
		},
		["sight_aimpoint_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_aimpoint"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_AIMPOINT_2 or val
	end,
	["ScopeVElement"] = "sight_aimpoint",
	["Reticle"] = "models/shrimp/fo4/glock19x/glock_rds_reticle"
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end