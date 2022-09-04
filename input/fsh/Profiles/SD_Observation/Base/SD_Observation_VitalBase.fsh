Profile: Moph43pObservationVitalBase
Parent: Observation
Id: moph43p-observation-vital-base
Title: "MoPH43p Observation: Vital"
Description: "ข้อมูลการตรวจสัญญาณชีพ"
* ^url = $SD_Observation_VitalBase
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains hl7 0..1
* category[hl7].coding = $CS_HL7_ObservationCat#vital-signs (exactly)
* code MS
* code ^short = "รหัสการตรวจสัญญาณชีพ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 0..1 MS
* code.coding[code43Plus] from $VS_Meta_Vital_ObsList (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] MS
* value[x] ^short = "ผลของการตรวจสัญญาณชีพ"