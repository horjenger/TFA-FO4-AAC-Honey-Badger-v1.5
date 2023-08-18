if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "CompM4S sight"
ATTACHMENT.ShortName = "M4S"
ATTACHMENT.Icon = "entities/fo4_hb_compm4s.png"
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
		["sight_compm4s"] = {
			["active"] = true
		},
		["sight_compm4s_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_compm4s"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_COMPM4S or val
	end,
	["ScopeVElement"] = "sight_compm4s",
	["Reticle"] = "models/shrimp/fo4/glock19x/glock_rds_reticle"
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end