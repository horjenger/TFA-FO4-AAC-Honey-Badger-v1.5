if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "ACRO sight"
ATTACHMENT.ShortName = "ACR"
ATTACHMENT.Icon = "entities/fo4_hb_acro.png"
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
		["sight_acro"] = {
			["active"] = true
		},
		["sight_acro_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_acro"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_ACRO or val
	end,
	["ScopeVElement"] = "sight_acro",
	["Reticle"] = "models/shrimp/fo4/glock19x/glock_rds_reticle"
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end