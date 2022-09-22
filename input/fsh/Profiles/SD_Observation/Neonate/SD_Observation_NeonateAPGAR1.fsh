Profile: MophPcObservationNeonateAPGAR1
Parent: $SD_Observation_NeonateBase
Id: mophpc-observation-neonate-apgar-1
Title: "MoPH43p Observation: Neonate-APGAR-1"
Description: "การประเมินสภาพทารกแรกเกิดใน 1 นาทีแรก (APGAR 1 นาที)"
* ^url = $SD_Observation_NeonateAPGAR1
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#survey
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #9272-6 (exactly)
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
* component[color].code = $LNC#32406-1
* component[color].value[x] 1..
* component[color].value[x] only integer
* component[heartRate].code = $LNC#32407-9
* component[heartRate].value[x] 1..
* component[heartRate].value[x] only integer
* component[reflexIrritability].code = $LNC#32409-5
* component[reflexIrritability].value[x] 1..
* component[reflexIrritability].value[x] only integer
* component[muscleTone].code = $LNC#32408-7
* component[muscleTone].value[x] 1..
* component[muscleTone].value[x] only integer
* component[respiratoryEffort].code = $LNC#32410-3
* component[respiratoryEffort].value[x] 1..
* component[respiratoryEffort].value[x] only integer