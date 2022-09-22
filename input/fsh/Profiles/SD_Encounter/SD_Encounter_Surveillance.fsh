Profile: MophPcEncounterSurveillance
Parent: $SD_Encounter_Base
Id: mophpc-encounter-surveillance
Title: "MoPH43p Encounter: Surveillance"
Description: "การรับบริการของผู้ป่วยด้วยโรคที่ต้องเฝ้าระวัง"
* ^url = $SD_Encounter_Surveillance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* reasonCode.coding ^slicing.discriminator.type = #value
* reasonCode.coding ^slicing.discriminator.path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    survGroup 0..1 MS
* reasonCode.coding[survGroup] from $VS_THCC_SurvGroup (extensible)
* reasonCode.coding[survGroup].system 1..
* reasonCode.coding[survGroup].system = $CS_THCC_SurvGroup (exactly)
* reasonCode.coding[survGroup].code 1..
