if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Spec-Ops skin"
ATTACHMENT.ShortName = "BLK"
ATTACHMENT.Icon = "entities/fo4_hb_black.png"
ATTACHMENT.Description = {}

ATTACHMENT.WeaponTable = {
	["Skin"] = 1
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_SKIN_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_SKIN_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end