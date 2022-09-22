Profile: MophPcObservationSocialRiskBehavior
Parent: $SD_Observation_SocialBase
Id: mophpc-observation-social-risk-behavior
Title: "MoPH43p Observation: Social-Risk Behavior"
Description: "ผลการบันทึกพฤติกรรมเสี่ยง"
* ^url = $SD_Observation_SocialRiskBehavior
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_SocialObsType (exactly)
  * code 1..1 MS
  * code = #risk-behavior (exactly)
* value[x] only CodeableConcept

