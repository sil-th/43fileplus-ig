Profile: Moph43pObservationPregPostnatal
Parent: Observation
Id: moph43p-observation-preg-post-natal
Title: "MoPH43p Observation: Pregnancy-Postnatal"
Description: "ข้อมูลประวัติการดูแลมารดาหลังคลอด ของหญิงคลอดในเขตรับผิดชอบ และหญิงคลอดผู้มารับบริการ"
* ^url = $SD_Observation_PregPostnatal
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    ncd 1..1 MS
* code.coding[ncd] from $VS_Meta_Pregnancy (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* effective[x] only dateTime
* effective[x] ^slicing.discriminator[0].type = #type
* effective[x] ^slicing.discriminator[=].path = "$this"
* effective[x] ^slicing.rules = #open
* effective[x] contains
    effectiveDateTime 1..1 MS
* effective[effectiveDateTime]
* effectiveDateTime only dateTime
* effectiveDateTime ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS