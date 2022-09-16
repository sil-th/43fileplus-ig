Profile: Moph43pObservationFunctionalBarthel
Parent: Observation
Id: moph43p-observation-functional-barthel
Title: "MoPH43p Observation: Functional Barthel Test"
Description: "ค่า Barthel ADL Index"
* ^url = $SD_Observation_FunctionalBarthel
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains hl7 1..1 MS
* category[hl7] = $CS_HL7_ObservationCat#survey
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
  * code = #96761-2 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #{score} (exactly)
