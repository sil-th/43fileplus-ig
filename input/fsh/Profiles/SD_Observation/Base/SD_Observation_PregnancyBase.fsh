Profile: Moph43pObservationPregnancyBase
Parent: Observation
Id: moph43p-pregnancy-base
Title: "MoPH43p Observation: Pregnancy"
Description: "ข้อมูลการตรวจประเมินสตรีวัยเจริญพันธุ์ และสตรีตั้งครรภ์"
* ^url = $SD_Observation_PregnancyBase
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
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 1..1 MS
* code.coding[code43Plus] from $VS_Meta_Pregnancy_ObsList (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* interpretation MS
* note MS