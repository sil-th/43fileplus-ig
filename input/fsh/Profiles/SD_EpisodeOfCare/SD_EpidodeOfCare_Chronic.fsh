Profile: Moph43pEpisodeOfCareChronic
Parent: EpisodeOfCare
Id: moph43p-episodeofcare-chronic
Title: "MoPH43p EpisodeOfCare: Chronic"
Description: "การรับบริการเป็นประจำ"
* ^url = $SD_EpisodeOfCare_Chronic
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ConditionChronicDischargeReason named chronicDischargeReason 0..1 MS
* status = #finished (exactly)
* status MS
* diagnosis.condition only Reference($SD_Condition_Base)
* patient only Reference($SD_Patient_Base)
* managingOrganization only Reference($SD_Organization_Provider)
* period MS