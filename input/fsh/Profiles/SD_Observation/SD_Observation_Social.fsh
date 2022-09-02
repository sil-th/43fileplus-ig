Profile: Moph43pObservationSocial
Parent: Observation
Id: moph43p-observation-social
Title: "MoPH43p Observation: Social"
Description: "ข้อมูลประวัติทางสังคม"
* ^url = $SD_Observation_Social
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains Laboratory 1..1
* category[Laboratory].coding.system 1..
* category[Laboratory].coding.system = $CS_HL7_ObservationCat (exactly)
* category[Laboratory].coding.code 1..
* category[Laboratory].coding.code = #social (exactly)
* code MS
* code ^short = "รหัสการตรวจทางห้องปฏิบัติการ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    43plus 0..1 MS
* code.coding[43plus] ^short = "รหัสชนิดประวัติทางสังคม"
* code.coding[43plus].system 1..
* code.coding[43plus].system = $VS_Meta_SocialObsType (exactly)
* code.coding[43plus].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] MS
* value[x] ^short = "ประวัติทางสังคม"