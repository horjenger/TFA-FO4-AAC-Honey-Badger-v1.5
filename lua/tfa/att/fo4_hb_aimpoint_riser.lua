if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Aimpoint riser sight"
ATTACHMENT.ShortName = "AIMPOINT"
ATTACHMENT.Icon = "entities/fo4_hb_aimpoint_riser.png"
ATTACHMENT.Description = {

}

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
        [3] =  2,
    },
        ["Bodygroups_W"] = {
        [2] =  2,
    },
	["VElements"] = {
		["sight_aimpoint_riser"] = {
			["active"] = true
		},
		["sight_aimpoint_riser_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_aimpoint_riser"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_AIMPOINT or val
	end,
	["ScopeVElement"] = "sight_aimpoint_riser",
	["Reticle"] = "models/shrimp/fo4/glock19x/glock_rds_reticle"
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end