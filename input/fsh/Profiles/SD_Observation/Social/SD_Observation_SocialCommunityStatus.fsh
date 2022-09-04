Profile: Moph43pObservationRoleInCommunity
Parent: $SD_Observation_SocialBase
Id: moph43p-observation-social-role-in-community
Title: "MoPH43p Observation: Social-Role in Community"
Description: "ข้อมูลสถานะในชุมชน"
* ^url = $SD_Observation_SocialRoleInCommunity
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $CS_Meta_SocialObsType#vstatus (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_StatusInVillage (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_StatusInVillage (exactly)

