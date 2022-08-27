Profile: Moph43pObservationVitalPanel
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-panel
Title: "Observation - Vital Panel (MoPH43p)"
Description: "รวมผลการตรวจสัญญาณชีพ"
* ^url = $SD_Observation_VitalPanel
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #85353-1 (exactly)
* hasMember MS
* hasMember ^slicing.discriminator[0].type = #profile
* hasMember ^slicing.discriminator[=].path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember contains
    bw 0..1 MS and
    bh 0..1 MS and
    hc 0..1 MS
* hasMember[bw] only Reference($SD_Observation_VitalBw)
* hasMember[bw] ^sliceName = "bodyweight"
* hasMember[bh] only Reference($SD_Observation_VitalHt)
* hasMember[bh] ^sliceName = "bodyheight"
* hasMember[hc] only Reference($SD_Observation_VitalHC)
* hasMember[hc] ^sliceName = "head-circumference"