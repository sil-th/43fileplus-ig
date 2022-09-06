Profile: Moph43pObservationPregFundalHeight
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-fundal-height
Title: "MoPH43p Observation: Pregnancy-Fundal Height"
Description: "ระดับมดลูก"
* ^url = $SD_Observation_PregFundalHeight
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#11881-0 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #cm (exactly)
