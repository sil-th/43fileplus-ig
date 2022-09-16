Profile: Moph43pEpisodeOfCareBase
Parent: EpisodeOfCare
Id: moph43p-episodeofcare-base
Title: "MoPH43p EpisodeOfCare"
Description: "การรับบริการเป็นประจำ"
* ^url = $SD_EpisodeOfCare_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ConditionChronicDischargeReason named chronicDischargeReason 0..1 MS
* status MS
* diagnosis.condition only Reference($SD_Condition_Base)
* patient only Reference($SD_Patient_Base)
* managingOrganization only Reference($SD_Organization_Provider)
* period MS