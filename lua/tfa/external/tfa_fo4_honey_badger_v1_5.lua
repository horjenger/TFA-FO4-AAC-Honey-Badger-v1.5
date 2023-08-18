local path = "shrimp/fo4/honey_badger/v1_5/"
local pref = "TFA_FO4_HB_V1.5"

sound.Add({name = pref .. ".Fire", channel = CHAN_WEAPON, level = 150, pitch = 100, sound = ")" .. path .. "WPN_HoneyBadger_Fire.wav"})
sound.Add({name = pref .. ".Silenced", channel = CHAN_WEAPON, level = 150, pitch = 100, sound = ")" .. path .. "WPN_HoneyBadger_Fire_Sup.wav"})
sound.Add({name = pref .. ".Loop", channel = CHAN_WEAPON, level = 150, pitch = 100, sound = ")" .. path .. "WPN_HoneyBadger_Fire_Auto_0900rpm_Loop.wav"})
sound.Add({name = pref .. ".LoopTail", channel = CHAN_WEAPON, level = 150, pitch = 100, sound = ")" .. path .. "WPN_HoneyBadger_Fire_Auto_0780rpm_LPM_Tail.wav"})
sound.Add({name = pref .. ".Loop_Silenced", channel = CHAN_WEAPON, level = 150, pitch = 100, sound = ")" .. path .. "WPN_HoneyBadger_Fire_Sup_Auto_0900rpm_Loop.wav"})
sound.Add({name = pref .. ".Loop_SilencedTail", channel = CHAN_WEAPON, level = 150, pitch = 100, sound = ")" .. path .. "WPN_HoneyBadger_Fire_Sup_Auto_0900rpm_Tail.wav"})

//TFA.AddSound(pref..".Silenced", CHAN_USER_BASE, 1, 140, {99, 101}, path.."G19-1-Suppressed.wav", ")")
//TFA.AddSound(pref..".FireLoop_Silenced", CHAN_USER_BASE, 1, 140, {99, 101}, path.."g19-loop_supp.wav", ")")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2StartReload", path .. "Foley/2StartReload.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagRelease20", path .. "Foley/Tactical/20rnd_MagRelease.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagOut20", path .. "Foley/Tactical/20rnd_MagOut.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagInserting20", path .. "Foley/Tactical/20rnd_MagInserting.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagIn20", path .. "Foley/Tactical/20rnd_MagIn.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2EndGrab", path .. "Foley/2EndGrab.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2EndShoulder", path .. "Foley/2EndShoulder.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerStartReload", path .. "Foley/StartReload.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerStockUnfold", path .. "Foley/StockClose.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagGrab", path .. "Foley/MagGrab.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerBoltBack", path .. "Foley/BoltBack.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerBoltForward", path .. "Foley/BoltForward.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerEndReload", path .. "Foley/EndReload.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerDC", path .. "Foley/EndReload.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerStockFold", path .. "Foley/StockClose.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerLift", path .. "Foley/Inspection/Lift.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerInspection", path .. "Foley/Inspection/Inspection.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagOut", path .. "Foley/MagOut.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2MagPush", path .. "Foley/2MagPush.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2MagLock", path .. "Foley/2MagLock.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerHitSlap", path .. "Foley/SlapHit.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerBoltSlap", path .. "Foley/BoltSlap.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2MagOut", path .. "Foley/2MagOut.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2MagGrab", path .. "Foley/2MagGrab.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2MagTouch", path .. "Foley/2MagTouch.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagImpact", path .. "Foley/MagImpact.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadger2Adjust", path .. "Foley/2Adjust.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagRelease40", path .. "Foley/Tactical/40rnd_MagRelease.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagOut40", path .. "Foley/Tactical/40rnd_MagOut.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagTouch40", path .. "Foley/Tactical/40rnd_MagTouch.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagInserting40", path .. "Foley/Tactical/40rnd_MagInserting.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagIn40", path .. "Foley/Tactical/40rnd_MagIn.wav")

TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagRelease60P", path .. "Foley/Tactical/60rnd_MagRelease.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagOut60P", path .. "Foley/Tactical/60rnd_MagOut.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagTouch60P", path .. "Foley/Tactical/60rnd_MagTouch.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagInserting60P", path .. "Foley/Tactical/60rnd_MagInserting.wav")
TFA.AddWeaponSound(pref .. ".WPNHoneyBadgerMagIn60P", path .. "Foley/Tactical/60rnd_MagIn.wav")

