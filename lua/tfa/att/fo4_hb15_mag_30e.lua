if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Magazine 30 [E]"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "Increases magazine capacity to 30 rounds",
}
ATTACHMENT.Icon = "entities/fo4_hb_mag30e.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "MAG+"

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
		[4] =  4
    },
        ["Bodygroups_W"] = {
		[3] =  4
    },
	["Animations"] = {
		["reload"] = function(wep, _val)
			local val = table.Copy(_val)
			if val.type == TFA.Enum.ANIMATION_SEQ then
				val.value = val.value .. "_30"
			else
				val.type = TFA.Enum.ANIMATION_SEQ --Sequence or act
				val.value = "reload_30"
			end
			return (wep:CheckVMSequence(val.value) and val or _val), true, true
		end,
		["reload_empty"] = function(wep, _val)
			local val = table.Copy(_val)
			if val.type == TFA.Enum.ANIMATION_SEQ then
				val.value = val.value .. "_30"
			else
				val.type = TFA.Enum.ANIMATION_SEQ --Sequence or act
				val.value = "reload_empty_30"
			end
			return (wep:CheckVMSequence(val.value) and val or _val), true, true
		end,
	},
	["Primary"] = {
		["ClipSize"] = function(wep, val)
			return wep.Primary.ClipSize_ExtPistol or 30
		end,
	},
}

function ATTACHMENT:Attach(wep)
	if not wep.IsFirstDeploy then
		wep:Unload()
	end
end

function ATTACHMENT:Detach(wep)
	wep:Unload()
end

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
