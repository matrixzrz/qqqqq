/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
* 
* Original Author: Michael Bao
* 
* Weapon Attachment: Javelin.
*/

class ZestyModWeaponAttachment_ShortSpear extends AOCWeaponAttachment_ShortSpear;



DefaultProperties
{

KickOffset=(X=36, Y=0, Z=-42)
	KickSize=18.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_jav_Javelin.WEP_Javelin'
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_jav_Javelin.WEP_Javelin'
	End Object

	WeaponID=EWEP_ShortSpear
	WeaponClass=class'ZestyModWeapon_ShortSpearMelee'
	WeaponSocket =JavelinPoint

	//WeaponPSSocket=Flame
	//WeaponPS=ParticleSystem'CHV_Sky1.Effects.Torch_fire'

	WeaponStaticMeshScale=1

	AttackTypeInfo(0)=(fBaseDamage=39.0, fForce=22500, cDamageType="AOC.AOCDmgType_Swing", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=36.0, fForce=22500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=63.0, fForce=20000, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=0.0, fForce=22500, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=22500, cDamageType="AOC.AOCDmgType_Swing", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=6.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

Skins.empty;
Skins(0)={(
		SkeletalMeshPath="WP_jav_ShortSpear.WEP_short_spear",
		StaticMeshPath="WP_jav_shortspear.sm_shortspear",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_short_spear_png"
		)};
}
