Profile: Moph43pObservationAccType
Parent: Observation
Id: moph43p-observation-accident-type
Title: "MoPH43p Observation: Accident-Type"
Description: "สถานที่เกิดอุบัติเหตุ"
* ^url = $SD_Observation_AccidentType
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
* category contains Laboratory 1..1
* category[Laboratory].coding.system 1..
* category[Laboratory].coding.system = $CS_HL7_ObservationCat (exactly)
* category[Laboratory].coding.code 1..
* category[Laboratory].coding.code = #exam (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    thcc 1..1 MS
* code.coding[thcc] from $VS_Meta_AccidentObs (extensible)
* code.coding[thcc].system 1..
* code.coding[thcc].system = $CS_Meta_AccidentObs (exactly)
* code.coding[thcc].code 1..
* code.coding[thcc].code = #injury (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_AccidentPatientType (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_THCC_AccidentPatientType (exactly)
* valueCodeableConcept.coding[thcc].code 1..