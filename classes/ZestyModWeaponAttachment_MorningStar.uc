/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
* 
* Original Author: Michael Bao
* 
* The weapon that is replicated to all clients: Morning Star
*/
class ZestyModWeaponAttachment_MorningStar extends AOCWeaponAttachment_MorningStar;

simulated function float GetHandleTracerPercent(int i)
{
    local vector vStart, vMid, vEnd;
    local float HandleLength, WeaponLength;

    if (Mesh.GetSocketByName('TraceMid') == None)
    {
        return 0.0f;
    }
    Mesh.GetSocketWorldLocationAndRotation('TraceStart', vStart);
    Mesh.GetSocketWorldLocationAndRotation('TraceMid', vMid);
    Mesh.GetSocketWorldLocationAndRotation('TraceEnd', vEnd);

    WeaponLength = VSize(vEnd - vStart);
    HandleLength = VSize(vMid - vStart);

    return (HandleLength / WeaponLength)/2;
}

DefaultProperties
{

KickOffset=(X=36, Y=0, Z=-42)
	KickSize=18.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_1hb_Mace.WEP_mace'
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_1hb_Mace.WEP_mace'
	End Object

	WeaponID=EWEP_Broadsword
	WeaponClass=class'ZestyModWeapon_MorningStar'

	WeaponSocket=wep1hpoint
	WeaponStaticMeshScale=1

	AttackTypeInfo(0)=(fBaseDamage=69.0, fForce=20500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=72.0, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=42.0, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=0.0, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=25500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=6.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins.empty;
	Skins(0)={(
		SkeletalMeshPath="WP_1hb_Morning_Star.WEP_MorningStar",
		StaticMeshPath="WP_1hb_Morning_Star.SM_MorningStar",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_bardiche_png"
		)};
}
