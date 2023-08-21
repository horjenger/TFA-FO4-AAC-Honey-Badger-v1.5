if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Specter DR Scope"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["="], "4x zoom", TFA.AttachmentColors["-"], "40% higher zoom time",  TFA.AttachmentColors["-"], "10% slower aimed walking" }
ATTACHMENT.Icon = "entities/fo4_hb_specterdr.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "DR"
ATTACHMENT.Base = "ins2_scope_base"
ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
        [3] =  2,
    },
        ["Bodygroups_W"] = {
        [2] =  2,
    },
	["VElements"] = {
		["scope_specter"] = {
			["active"] = function(wep, val) TFA.INS2.AnimateSight(wep) return true end,
			["ins2_sightanim_idle"] = "scope_idle",
			["ins2_sightanim_iron"] = "scope_zoom",
		}
	},
	["WElements"] = {
		["scope_specter"] = {
			["active"] = true
		}
	},
	["Secondary"] = {
		["ScopeZoom"] = function(wep, val) return 4 end
	},
	["INS2_SightVElement"] = "scope_specter",
	["INS2_SightSuffix"] = "SPECTER"
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end