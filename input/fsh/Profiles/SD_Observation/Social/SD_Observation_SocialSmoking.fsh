Profile: Moph43pObservationSocialSmoking
Parent: $SD_Observation_SocialBase
Id: moph43p-observation-social-smoking
Title: "MoPH43p Observation: Social Smoking"
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
* valueCodeableConcept.coding from $VS_THCC_NcdSmoking (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_NcdSmoking (exactly)