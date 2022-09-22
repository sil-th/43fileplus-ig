Profile: MophPcObservationLabFBS
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-fbs
Title: "MoPH43p Observation: Lab-FBS"
Description: "การตรวจระดับน้ำตาลในเลือด (FBS)"
* ^url = $SD_Observation_LabFbs
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#1558-6
* code.coding[tmlt] = $CS_TMLT#320291
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #mg/dL (exactly)
* referenceRange.high.system 0..
* referenceRange.high.system = $UCUM (exactly)
* referenceRange.high.code 0..
* referenceRange.high.code = #mg/dL (exactly)
* method MS
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains thcc 0..1
* method.coding[thcc] from $VS_THCC_NcdFbsMethod (extensible)
* method.coding[thcc].system 1..
* method.coding[thcc].system =  $CS_THCC_NcdFbsMethod (exactly)
* method.coding[thcc].code 1..