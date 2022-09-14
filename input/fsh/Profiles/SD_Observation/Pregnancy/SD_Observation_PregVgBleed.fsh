Profile: Moph43pObservationPregVgBleed
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-vg-bleed
Title: "MoPH43p Observation: Pregnancy-Vaginal Bleed"
Description: "อาการเลือดออกในช่องคลอด"
* ^url = $SD_Observation_PregVgBleed
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #289530006 (exactly)
* value[x] only string

