Profile: Moph43pObservationAccVehicle
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-vehicle
Title: "MoPH43p Observation: Accident-Vehicle"
Description: "ประเภทยานพาหนะที่เกิดเหตุ"
* ^url = $SD_Observation_AccidentVehicle
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_AccidentObs#vehicle (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_AccidentVehicle (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_AccidentVehicle (exactly)

