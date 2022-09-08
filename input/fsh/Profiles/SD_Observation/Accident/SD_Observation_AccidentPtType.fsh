Profile: Moph43pObservationAccidentPtType
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-pt-type
Title: "MoPH43p Observation: Accident-Patient Type"
Description: "รหัสประเภทผู้บาดเจ็บ"
* ^url = $SD_Observation_AccidentPtType
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_AccidentObs#injury (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_AccidentPatientType (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_AccidentPatientType (exactly)

