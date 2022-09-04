Profile: Moph43pObservationPregBirthGA
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-birth-ga
Title: "MoPH43p Observation: Pregnancy-Birth GA"
Description: "อายุครรภ์ (สัปดาห์)"
* ^url = $SD_Observation_PregBirthGA
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#85719-3 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #wk (exactly)