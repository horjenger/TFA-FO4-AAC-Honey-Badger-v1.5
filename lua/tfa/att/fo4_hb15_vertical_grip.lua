if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Grip test"
ATTACHMENT.Description = {

}
ATTACHMENT.Icon = "entities/tfa_qmark.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "TEST"

ATTACHMENT.WeaponTable = {
		["idle"] = function(wep, _val)
			local val = table.Copy(_val)
			if val.type == TFA.Enum.ANIMATION_SEQ then
				val.value = val.value .. "_grip"
			else
				val.type = TFA.Enum.ANIMATION_SEQ --Sequence or act
				val.value = "idle_grip"
			end
			return (wep:CheckVMSequence(val.value) and val or _val), true, true
		end,
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
