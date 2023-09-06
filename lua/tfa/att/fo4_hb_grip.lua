if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Grip test"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "60% less vertical recoil", "20% less horizontal recoil", TFA.AttachmentColors["-"], "10% lower base accuracy", "5% lower scoped accuracy", "Marginally slower movespeed" }
ATTACHMENT.Icon = "entities/tfa_qmark.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "GRIP"

ATTACHMENT.WeaponTable = {
	["Animations"] = {
		["idle"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "idle_grip"
		},
		["draw"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "draw_grip"
		},
		["draw_first"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "equip_grip"
		},
		["holster"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "unequip_grip"
		},
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_grip"
		},
		["reload_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_empty_grip"
		},
		["inspect"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "inspect_grip"
		},
		["bash"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "melee_grip"
		},
		["shoot1"] = function(wep,val)
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if val.value then
				val["value"] = "ACT_VM_PRIMARYATTACK_GRIP"
			end
			return val, true, false
		end,
	},
	    ["WalkAnimation"] = {
		["loop"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "walk_grip"
		}
    },
	    ["CustomizeAnimation"] = {
		["loop"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "idle_grip"
		}
    },
		["ShootAnimation"] = {
		["loop"] = function(wep,val)
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if val.value then
				val["value"] = "ACT_VM_PRIMARYATTACK_AUTO_GRIP"
			end
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if val.value then
				val["value_is"] = "ACT_VM_PRIMARYATTACK_1_AUTO_GRIP"
			end
			return val, true, false
		end
	},
	    ["IronAnimation"] = {
		["in"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "idle_ads_in_grip",
	},
		["loop"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "idle_ads_grip",
	},
		["out"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "idle_ads_out_grip",
	},
		["shoot"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "fire_iron_grip",
		},
    },
}


function ATTACHMENT:Attach( wep )
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
end

function ATTACHMENT:Detach( wep )
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end