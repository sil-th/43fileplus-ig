Profile: Moph43pObservationFunctionalTest
Parent: Observation
Id: moph43p-observation-functional-test
Title: "MoPH43p Observation: Functional Test"
Description: "การประเมินความบกพร่อง"
* ^url = $SD_Observation_FunctionalTest
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains hl7 1..1 MS
* category[hl7] = $CS_HL7_ObservationCat#exam
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 0..1 MS
* code.coding[code43Plus] from $VS_THCC_FunctionalTest (extensible)
  * system 1..1 MS
  * system = $CS_THCC_FunctionalTest (exactly)
  * code 1..1 MS
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
