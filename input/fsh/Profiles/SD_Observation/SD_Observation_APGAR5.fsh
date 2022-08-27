Profile: Moph43pObservationAPGAR5
Parent: Observation
Id: moph43p-observation-apgar-5
Title: "Observation - APGAR-5 (MoPH43p)"
Description: "การประเมินสภาพทารกแรกเกิดใน 5 นาทีแรก (APGAR 5 นาที)"
* ^url = $SD_Observation_APGAR5
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains Survey 1..1
* category[Survey].coding.system 1..
* category[Survey].coding.system = $CS_HL7_ObservationCat (exactly)
* category[Survey].coding.code 1..
* category[Survey].coding.code = #survey (exactly)
* code MS
* code ^short = "รหัสชนิดการตรวจ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..1 MS and
    snomed 0..1
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[loinc].code = #9274-2 (exactly)
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* component MS
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.rules = #open
* component contains
    color 0..1 MS and
    heartRate 0..1 MS and
    reflexIrritability 0..1 MS and
    muscleTone 0..1 MS and
    respiratoryEffort 0..1 MS
* component[color].code.coding.system 1..
* component[color].code.coding.system = $LNC (exactly)
* component[color].code.coding.code 1..
* component[color].code.coding.code = #32411-1 (exactly)
* component[color].value[x] 1..
* component[color].value[x] only integer
* component[heartRate].code.coding.system 1..
* component[heartRate].code.coding.system = $LNC (exactly)
* component[heartRate].code.coding.code 1..
* component[heartRate].code.coding.code = #32412-9 (exactly)
* component[heartRate].value[x] 1..
* component[heartRate].value[x] only integer
* component[reflexIrritability].code.coding.system 1..
* component[reflexIrritability].code.coding.system = $LNC (exactly)
* component[reflexIrritability].code.coding.code 1..
* component[reflexIrritability].code.coding.code = #32414-5 (exactly)
* component[reflexIrritability].value[x] 1..
* component[reflexIrritability].value[x] only integer
* component[muscleTone].code.coding.system 1..
* component[muscleTone].code.coding.system = $LNC (exactly)
* component[muscleTone].code.coding.code 1..
* component[muscleTone].code.coding.code = #32413-7 (exactly)
* component[muscleTone].value[x] 1..
* component[muscleTone].value[x] only integer
* component[respiratoryEffort].code.coding.system 1..
* component[respiratoryEffort].code.coding.system = $LNC (exactly)
* component[respiratoryEffort].code.coding.code 1..
* component[respiratoryEffort].code.coding.code = #32415-2 (exactly)
* component[respiratoryEffort].value[x] 1..
* component[respiratoryEffort].value[x] only integer