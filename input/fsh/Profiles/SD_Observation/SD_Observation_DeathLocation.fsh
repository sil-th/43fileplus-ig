Profile: Moph43pObservationDeathLocation
Parent: Observation
Id: moph43p-observation-death-location
Title: "MoPH43p Observation: Death Location"
Description: "การบันทึกสถานที่ตาย"
* ^url = $SD_Observation_DeathLocation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category.coding = $CS_HL7_ObservationCat#exam
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 MS
* code.coding[loinc]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #58332-8 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_DeathLocType (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_DeathLocType (exactly)