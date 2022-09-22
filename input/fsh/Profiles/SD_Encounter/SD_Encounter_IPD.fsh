Profile: MophPcEncounterIPD
Parent: $SD_Encounter_Base
Id: mophpc-encounter-ipd
Title: "MoPH43p Encounter: IPD"
Description: "การรับบริการ IPD"
* ^url = $SD_Encounter_IPD
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_EncounterLeaveDay named encounterLeaveDay 0..1
* class = $CS_HL7_EncounterClass#IMP
* length MS
* hospitalization MS
* hospitalization.extension contains
    $EX_TH_EncounterIpdDischargeStatus named ipdDischargeStatus 0..1 MS and
    $EX_TH_EncounterIpdDischargeType named ipdDischargeType 0..1 MS
* location.extension contains
    $EX_TH_EncounterIpdJourney named ipdJourney 0..* MS