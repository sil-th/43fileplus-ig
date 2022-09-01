Profile: Moph43pObservationNeonateBase
Parent: Observation
Id: moph43p-observation-neonatal-base
Title: "MoPH43p Observation: Neonate"
Description: "ข้อมูลประวัติการคลอดของทารก ของหญิงในเขตรับผิดชอบ หรือทารกที่มาคลอดที่หน่วยบริการ"
* ^url = $SD_Observation_NeonateBase
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    newborn 1..1 MS
* code.coding[newborn] ^sliceName = "newborn"
* code.coding[newborn] ^mustSupport = true
* code.coding[newborn] from $VS_Meta_Neonate (extensible)
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