Profile: Moph43pObservationSocialAlcohol
Parent: $SD_Observation_SocialBase
Id: moph43p-observation-ncd-alcohol
Title: "MoPH43p Observation: Social Alcohol"
Description: "ประวัติดื่มเครื่องดื่มแอลกอฮอลล์"
* ^url = $SD_Observation_SocialAlcohol
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#74013-4 (exactly) //Alcoholic drinks per day 
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
* valueCodeableConcept.coding[thcc] from $VS_THCC_NcdAlcohol (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_THCC_NcdAlcohol (exactly)
* valueCodeableConcept.coding[thcc].code 1..