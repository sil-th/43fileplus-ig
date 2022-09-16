Profile: Moph43pObservationNeonateAPGAR5
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonate-apgar-5
Title: "MoPH43p Observation: Neonate-APGAR-5"
Description: "การประเมินสภาพทารกแรกเกิดใน 5 นาทีแรก (APGAR 5 นาที)"
* ^url = $SD_Observation_NeonateAPGAR5
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#survey
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #9274-2 (exactly)
* component MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.rules = #open
* component contains
    color 0..1 MS and
    heartRate 0..1 MS and
    reflexIrritability 0..1 MS and
    muscleTone 0..1 MS and
    respiratoryEffort 0..1 MS
* component[color].code = $LNC#32411-1
* component[color].value[x] 1..
* component[color].value[x] only integer
* component[heartRate].code = $LNC#32412-9
* component[heartRate].value[x] 1..
* component[heartRate].value[x] only integer
* component[reflexIrritability].code = $LNC#32414-5
* component[reflexIrritability].value[x] 1..
* component[reflexIrritability].value[x] only integer
* component[muscleTone].code = $LNC#32413-7
* component[muscleTone].value[x] 1..
* component[muscleTone].value[x] only integer
* component[respiratoryEffort].code = $LNC#32415-2
* component[respiratoryEffort].value[x] 1..
* component[respiratoryEffort].value[x] only integer
