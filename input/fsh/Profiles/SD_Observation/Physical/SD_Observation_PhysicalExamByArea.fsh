Profile: MophPcObservationPhysicalExamByArea
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-exam-by-area
Title: "MoPH43p Observation: Physical-Exam by Area"
Description: "ผลการตรวจร่างกายตามแต่ละส่วน"
* ^url = $SD_Observation_PhysicalExamByArea
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #55286-9 (exactly)
* hasMember MS
* hasMember ^slicing.discriminator[0].type = #profile
* hasMember ^slicing.discriminator[=].path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember contains
    ga 0..1 MS and
    heent 0..1 MS and
    heart 0..1 MS and
    lung 0..1 MS and
    abd 0..1 MS and
    ext 0..1 MS and
    neuro 0..1 MS and
    misc 0..1 MS
* hasMember[ga] only Reference($SD_Observation_PhysicalGeneral)
* hasMember[heent] only Reference($SD_Observation_PhysicalHeent)
* hasMember[heart] only Reference($SD_Observation_PhysicalHeart)
* hasMember[lung] only Reference($SD_Observation_PhysicalLung)
* hasMember[abd] only Reference($SD_Observation_PhysicalAbd)
* hasMember[ext] only Reference($SD_Observation_PhysicalExt)
* hasMember[neuro] only Reference($SD_Observation_PhysicalNeuro)
* hasMember[misc] only Reference($SD_Observation_PhysicalMisc)