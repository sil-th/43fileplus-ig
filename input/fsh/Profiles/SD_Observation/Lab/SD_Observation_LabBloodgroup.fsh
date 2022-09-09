Profile: Moph43pObservationLabBldGrp
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-bloodgroup
Title: "MoPH43p Observation: Lab-Blood group"
Description: "ผลการตรวจหมู่เลือด"
* ^url = $SD_Observation_LabBloodgroup
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#34532-2 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    snomed 0..1 MS
* valueCodeableConcept.coding[snomed] from $VS_SNOMED_BloodGroup (extensible)
* valueCodeableConcept.coding[snomed].system = $SCT (exactly)
* hasMember MS
* hasMember ^slicing.discriminator[0].type = #profile
* hasMember ^slicing.discriminator[=].path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember contains
    abo 0..1 MS and
    rh 0..1 MS
* hasMember[abo] only Reference(Moph43pObservationLabBloodABO)
* hasMember[rh] only Reference(Moph43pObservationLabBloodRH)