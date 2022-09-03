Profile: Moph43pObservationSocialSmoking
Parent: $SD_Observation_SocialBase
Id: moph43p-observation-social-smoking
Title: "MoPH43p Observation: Social Smoking"
Description: "ประวัติสูบบุหรี่"
* ^url = $SD_Observation_SocialSmoking
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#72166-2 (exactly) //Tobacco smoking status 
* subject 1.. MS
* subject only Reference($SD_Patient)
* value[x] MS
* value[x] only CodeableConcept
* value[x] ^slicing.discriminator[0].type = #type
* value[x] ^slicing.discriminator[=].path = "$this"
* value[x] ^slicing.rules = #open
* value[x] contains
    valueCodeableConcept 1..1 MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_NcdSmoking (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_THCC_NcdSmoking (exactly)
* valueCodeableConcept.coding[thcc].code 1..