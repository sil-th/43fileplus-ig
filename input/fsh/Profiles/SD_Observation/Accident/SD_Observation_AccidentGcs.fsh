Profile: Moph43pObservationAccGcs
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-gcs
Title: "MoPH43p Observation: Accident-GCS"
Description: "Glasgow coma score"
* ^url = $SD_Observation_AccidentGcs
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#survey (exactly)
* code.coding[code43Plus] = $LNC#9269-2 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #{score} (exactly)
* component ..3
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    eye 0..1 MS and
    verbal 0..1 MS and
    motor 0..1 MS
* component[eye].code = $LNC#9267-6 (exactly)
* component[eye].value[x] only Quantity
* component[eye].valueQuantity.system = $UCUM (exactly)
* component[eye].valueQuantity.code = #{score} (exactly)
* component[verbal].code = $LNC#9270-0  (exactly)
* component[verbal].value[x] only Quantity
* component[verbal].valueQuantity.system = $UCUM (exactly)
* component[verbal].valueQuantity.code = #{score} (exactly)
* component[motor].code = $LNC#9268-4 (exactly)
* component[motor].code.coding.code = #9268-4 (exactly)
* component[motor].value[x] only Quantity
* component[motor].valueQuantity.system = $UCUM (exactly)
* component[motor].valueQuantity.code = #{score} (exactly)