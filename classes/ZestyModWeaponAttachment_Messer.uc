/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
*
* Original Author: Michael Bao
*
* The weapon that is replicated to all clients: Messer
*/
class ZestyModWeaponAttachment_Messer extends AOCWeaponAttachment_Messer;

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

    return (HandleLength / WeaponLength);
}

DefaultProperties
{

KickOffset=(X=39, Y=0, Z=-42)
	KickSize=18.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_15hs_Longsword.WEP_Longsword'
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_15hs_Longsword.WEP_Longsword'
	End Object

	WeaponID=EWEP_Messer
	WeaponClass=class'ZestyModWeapon_Messer'
	WeaponSocket=wep2hpoint

	bUseAlternativeKick=true

	WeaponStaticMeshScale=1

	AttackTypeInfo(0)=(fBaseDamage=87.0, fForce=31000, cDamageType="AOC.AOCDmgType_Swing", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=87.0, fForce=29000, cDamageType="AOC.AOCDmgType_Swing", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=60.0, fForce=30000, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=0.0, fForce=42500, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=35500, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=6.0, fForce=48000.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins.empty;
	Skins(0)={(
		SkeletalMeshPath="WP_15hs_Messer.Messer.wep_messer",
		StaticMeshPath="WP_15hs_Messer.Messer.sm_messer",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_messer_png"
		)};
