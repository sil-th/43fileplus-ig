Profile: Moph43pObservationFBS
Parent: $SD_Observation_Lab
Id: moph43p-observation-lab-fbs
Title: "MoPH43p Observation: FBS"
Description: "การตรวจระดับน้ำตาลในเลือด (FBS)"
* ^url = $SD_Observation_LabFbs
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #1558-6 (exactly)
* code.coding[tmlt].code = #320291 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #mg/dL (exactly)
* referenceRange.high.system 1..
* referenceRange.high.system = $UCUM (exactly)
* referenceRange.high.code 1..
* referenceRange.high.code = #mg/dL (exactly)
* method MS
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains thcc 0..1
* method.coding[thcc] from $VS_THCC_NcdFbsMethod (extensible)
* method.coding[thcc].system 1..
* method.coding[thcc].system =  $CS_THCC_NcdFbsMethod  (exactly)
* method.coding[thcc].code 1..