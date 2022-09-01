Profile: Moph43pObservationNcdGlucose
Parent: Observation
Id: moph43p-observation-ncd-glucose
Title: "MoPH43p Observation: NCD Glucose"
Description: "ประวัติน้ำตาลในเลือดสูง"
* ^url = $SD_Observation_NcdGlucose
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
* category contains Exam 1..1
* category[Exam].coding.system 1..
* category[Exam].coding.system = $CS_HL7_ObservationCat (exactly)
* category[Exam].coding.code 1..
* category[Exam].coding.code = #exam (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 1..1 MS
* code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED"
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* code.coding[snomed].code = #444780001 (exactly) //High glucose level in blood
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* effective[x] only dateTime
* effective[x] ^slicing.discriminator[0].type = #type
* effective[x] ^slicing.discriminator[=].path = "$this"
* effective[x] ^slicing.rules = #open
* effective[x] contains
    effectiveDateTime 1..1 MS
* effective[effectiveDateTime] 
* effectiveDateTime only dateTime
* effectiveDateTime ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept
* value[x] ^slicing.discriminator[0].type = #type
* value[x] ^slicing.discriminator[=].path = "$this"
* value[x] ^slicing.rules = #open
* value[x] contains
    valueCodeableConcept 1..1 MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_HL7_YesNo (exactly)
* valueCodeableConcept.coding[thcc].code 1..