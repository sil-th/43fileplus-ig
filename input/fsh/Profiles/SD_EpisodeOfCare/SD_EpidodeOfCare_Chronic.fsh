Profile: Moph43pEpisodeOfCareChronic
Parent: EpisodeOfCare
Id: moph43p-episodeofcare-chronic
Title: "MoPH43p EpisodeOfCare: Chronic"
Description: "การรับบริการเป็นประจำ"
* ^url = $SD_EpisodeOfCare_Chronic
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_ChronicDischargeReason named chronicDischargeReason 0..1 MS
* extension[chronicDischargeReason] ^short = "ประเภทการจำหน่าย chronic case"
* status = #finished (exactly)
* status MS
* diagnosis.condition only Reference($SD_Condition)
* patient only Reference($SD_Patient)
* managingOrganization only Reference($SD_Organization_Provider)
* period MS