Profile: MophPcObservationSocialRoleInHouse
Parent: $SD_Observation_SocialBase
Id: mophpc-observation-social-role-in-house
Title: "MoPH-PC Observation: Social-Role in House"
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
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_StatusInFamily (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_StatusInFamily (exactly)