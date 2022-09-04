Profile: Moph43pObservationSocialAlcohol
Parent: $SD_Observation_SocialBase
Id: moph43p-observation-ncd-alcohol
Title: "MoPH43p Observation: Social-Alcohol"
Description: "ประวัติดื่มเครื่องดื่มแอลกอฮอลล์"
* ^url = $SD_Observation_SocialAlcohol
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#74013-4 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_NcdAlcohol (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_NcdAlcohol (exactly)