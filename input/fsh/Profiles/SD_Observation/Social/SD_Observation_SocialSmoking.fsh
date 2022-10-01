Profile: MophPcObservationSocialSmoking
Parent: $SD_Observation_SocialBase
Id: mophpc-observation-social-smoking
Title: "MoPH-PC Observation: Social Smoking"
Description: "ประวัติสูบบุหรี่"
* ^url = $SD_Observation_SocialSmoking
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #72166-2 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_NcdSmoking (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_NcdSmoking (exactly)