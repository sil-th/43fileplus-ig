Profile: MophPcObservationSocialBase
Parent: Observation
Id: mophpc-observation-social-base
Title: "MoPH-PC Observation: Social"
Description: "ข้อมูลประวัติทางสังคม"
* ^url = $SD_Observation_SocialBase
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains hl7 0..1
* category[hl7] from $VS_HL7_ObservationCat (extensible)
* category[hl7] = $CS_HL7_ObservationCat#social-history
* code MS
* code ^short = "รหัสประวัติทางสังคม"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 0..1 MS
* code.coding[code43Plus] from $VS_Meta_SocialObsType (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* value[x] ^short = "ประวัติทางสังคม"
* interpretation MS
* note MS