if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Vortex UH-1 sight"
ATTACHMENT.ShortName = "UH1"
ATTACHMENT.Icon = "entities/fo4_hb_uh1.png"
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
		["sight_uh1"] = {
			["active"] = true
		},
		["sight_uh1_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_uh1"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_UH1 or val
	end,
	["ScopeVElement"] = "sight_uh1",
	["Reticle"] = "models/shrimp/fo4/honey_badger/HB_holosun_reticle"
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end