if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Vertical grip"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "60% less vertical recoil", "20% less horizontal recoil" }
ATTACHMENT.Icon = "entities/tfa_fo4_hb_vertical_grip.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "GRIP"

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
		[8] =  1
    },
        ["Bodygroups_W"] = {
		[7] =  1
    },
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
		["reload"] = function(wep,val)
			val = table.Copy(val)
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if wep:GetStat("MAG30") then
				val["value"] = "reload_30_grip"
			elseif wep:GetStat("MAG40") then
				val["value"] = "reload_40_grip"
			elseif wep:GetStat("MAG60") then
				val["value"] = "reload_60_grip"
				else
				val["value"] = "reload_grip"
			end
			return val, true, true
		end,
		["reload_empty"] = function(wep,val)
			val = table.Copy(val)
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			-- ext mags
			if wep:GetStat("MAG30") then
				val["value"] = "reload_empty_30_grip"
			elseif wep:GetStat("MAG40") then
				val["value"] = "reload_empty_40_grip"
			elseif wep:GetStat("MAG60") then
				val["value"] = "reload_empty_60_grip"
				else
				val["value"] = "reload_empty_grip"
			end
			return val, true, true
		end,
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
	["Primary"] = {
		["KickUp"] = function(wep,stat) return stat * 0.4 end,
		["KickDown"] = function(wep,stat) return stat * 0.4 end,
		["KickHorizontal"] = function(wep,stat) return stat * 0.8 end,
	},
	["HoldType"] = function(wep,stat)
		return "smg", true
	end,
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