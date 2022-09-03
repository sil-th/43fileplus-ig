Profile: Moph43pObservationSocialBase
Parent: Observation
Id: moph43p-observation-social-base
Title: "MoPH43p Observation: Social"
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
* category contains social 1..1
* category[social].coding = $CS_HL7_ObservationCat#social (exactly)
* code MS
* code ^short = "รหัสการตรวจทางห้องปฏิบัติการ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    43plus 0..1 MS and
    loinc 0..1 MS
* code.coding[43plus] from $VS_Meta_SocialObsType (extensible)
* code.coding[43plus].system 1..
* code.coding[43plus].system = $CS_Meta_SocialObsType (exactly)
* code.coding[43plus].code 1..
* code.coding[loinc] from $LNC (extensible)
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* value[x] ^short = "ประวัติทางสังคม"