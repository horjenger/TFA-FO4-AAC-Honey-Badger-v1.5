if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Ghost skin"
ATTACHMENT.ShortName = "GHST"
ATTACHMENT.Icon = "entities/fo4_hb_ghost.png"
ATTACHMENT.Description = {}

ATTACHMENT.WeaponTable = {
	["Skin"] = 2
}

ATTACHMENT.AttachSound = "TFA_FO4.MENU_SKIN_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_SKIN_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end