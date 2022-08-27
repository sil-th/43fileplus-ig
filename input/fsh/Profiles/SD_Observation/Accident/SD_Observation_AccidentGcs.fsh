Profile: Moph43pObservationAccGcs
Parent: Observation
Id: moph43p-observation-accident-gcs
Title: "MoPH43p Observation: Accident-Gcs"
Description: "Glasgow coma score"
* ^url = $SD_Observation_AccidentGcs
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
    loinc 1..1 MS
* code.coding[loinc] ^short = "รหัสมาตรฐาน LOINC"
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[loinc].code = #9269-2 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #{score} (exactly)
* component ..3
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    eye 0..1 MS and
    verbal 0..1 MS and
    motor 0..1 MS
* component[eye].code.coding.system = $LNC (exactly)
* component[eye].code.coding.code = #9267-6 (exactly)
* component[eye].value[x] only Quantity
* component[eye].valueQuantity.system = $UCUM (exactly)
* component[eye].valueQuantity.code = #{score} (exactly)
* component[verbal].code.coding.system = $LNC (exactly)
* component[verbal].code.coding.code = #9270-0 (exactly)
* component[verbal].value[x] only Quantity
* component[verbal].valueQuantity.system = $UCUM (exactly)
* component[verbal].valueQuantity.code = #{score} (exactly)
* component[motor].code.coding.system = $LNC (exactly)
* component[motor].code.coding.code = #9268-4 (exactly)
* component[motor].value[x] only Quantity
* component[motor].valueQuantity.system = $UCUM (exactly)
* component[motor].valueQuantity.code = #{score} (exactly)


