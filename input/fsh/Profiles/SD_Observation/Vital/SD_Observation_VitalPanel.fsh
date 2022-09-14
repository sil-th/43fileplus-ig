Profile: Moph43pObservationVitalPanel
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-panel
Title: "MoPH43p Observation: Vital Panel"
Description: "รวมผลการตรวจสัญญาณชีพ"
* ^url = $SD_Observation_VitalPanel
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #85353-1 (exactly)
* hasMember MS
* hasMember ^slicing.discriminator[0].type = #profile
* hasMember ^slicing.discriminator[=].path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember contains
    weight 0..* MS and
    height 0..* MS and
    bodyTemp 0..* MS and
    bloodPressure 0..* MS and
    heartRate 0..* MS and
    respRate 0..* MS and
    headCir 0..* MS and
    chestCir 0..* MS and
    waistCir 0..* MS and
    hipCir 0..* MS
* hasMember[weight] only Reference($SD_Observation_VitalBw)
* hasMember[height] only Reference($SD_Observation_VitalHt)
* hasMember[bodyTemp] only Reference($SD_Observation_VitalBt)
* hasMember[bloodPressure] only Reference($SD_Observation_VitalBp)
* hasMember[heartRate] only Reference($SD_Observation_VitalHr)
* hasMember[respRate] only Reference($SD_Observation_VitalHC)
* hasMember[headCir] only Reference($SD_Observation_VitalHC)
* hasMember[chestCir] only Reference($SD_Observation_VitalCC)
* hasMember[waistCir] only Reference($SD_Observation_VitalWc)
* hasMember[hipCir] only Reference($SD_Observation_VitalHiC)

