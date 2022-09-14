Profile: Moph43pObservationSocialRoleInHouse
Parent: $SD_Observation_SocialBase
Id: moph43p-observation-social-role-in-house
Title: "MoPH43p Observation: Social-Role in House"
Description: "สถานะในครอบครัว"
* ^url = $SD_Observation_SocialRoleInHouse
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_SocialObsType (exactly)
  * code 1..1 MS
  * code = #fstatus (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_StatusInFamily (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_StatusInFamily (exactly)

