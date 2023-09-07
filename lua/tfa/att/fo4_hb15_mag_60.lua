if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Magazine 60"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "Increases magazine capacity to 60 rounds",
}
ATTACHMENT.Icon = "entities/fo4_hb_mag60.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "MAG+"

ATTACHMENT.WeaponTable = {

["MAG60"] = true,

        ["Bodygroups_V"] = {
		[4] =  3
    },
        ["Bodygroups_W"] = {
		[3] =  3
    },
	["Animations"] = {
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_60"
		},
		["reload_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_empty_60"
		},
    },
	["Primary"] = {
		["ClipSize"] = function(wep, val)
			return wep.Primary.ClipSize_ExtPistol or 60
		end,
	},
}

function ATTACHMENT:Attach(wep)
	if not wep.IsFirstDeploy then
		wep:Unload()
	end
	wep.MagModel = "models/weapons/fo4/misc/w_hb_mag_60.mdl"
end

function ATTACHMENT:Detach(wep)
	wep:Unload()
	wep.MagModel = "models/weapons/fo4/misc/w_hb_mag_default.mdl"
end

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
