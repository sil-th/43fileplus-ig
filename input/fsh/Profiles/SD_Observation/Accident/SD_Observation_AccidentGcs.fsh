Profile: MophPcObservationAccGcs
Parent: $SD_Observation_AccidentBase
Id: mophpc-observation-accident-gcs
Title: "MoPH-PC Observation: Accident-GCS"
Description: "Glasgow coma score"
* ^url = $SD_Observation_AccidentGcs
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#survey
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #9269-2 (exactly)
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
* component[eye].code = $LNC#9267-6
* component[eye].value[x] only Quantity
* component[eye].valueQuantity.system = $UCUM (exactly)
* component[eye].valueQuantity.code = #{score} (exactly)
* component[verbal].code = $LNC#9270-0
* component[verbal].value[x] only Quantity
* component[verbal].valueQuantity.system = $UCUM (exactly)
* component[verbal].valueQuantity.code = #{score} (exactly)
* component[motor].code = $LNC#9268-4
* component[motor].value[x] only Quantity
* component[motor].valueQuantity.system = $UCUM (exactly)
* component[motor].valueQuantity.code = #{score} (exactly)