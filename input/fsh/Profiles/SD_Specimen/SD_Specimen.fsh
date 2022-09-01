Profile: Moph43pSpecimen
Parent: Specimen
Id: moph43p-specimen
Title: "MoPH43p Specimen"
Description: "ข้อมูลสิ่งส่งตรวจ"
* ^url = $SD_Specimen
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* type MS
* type ^short = "ประเภทสิ่งส่งตรวจ"
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains snomed 0..1
* type.coding[snomed].system 1..
* type.coding[snomed].system = $SCT (exactly)
* type.coding[snomed].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* receivedTime MS
* receivedTime ^short = "วัน-เวลาที่ส่งผลไปตรวจ"
* parent only Reference($SD_Specimen)
* collection MS
* collection.collected[x] MS
* collection.collected[x] only dateTime
* collection.collected[x] ^slicing.discriminator[0].type = #type
* collection.collected[x] ^slicing.discriminator[=].path = "$this"
* collection.collected[x] ^slicing.rules = #open
* collection.collected[x] contains
    collectedDateTime 1..1 MS
* collection.collected[collectedDateTime]
* collection.collectedDateTime only dateTime
* collection.collectedDateTime ^short = "วัน-เวลาที่ตรวจ, วัดค่า, เก็บตัวอย่าง"
* collection.collectedDateTime MS
* processing MS
* processing.time[x] MS
* processing.time[x] only dateTime
* processing.time[x] ^slicing.discriminator[0].type = #type
* processing.time[x] ^slicing.discriminator[=].path = "$this"
* processing.time[x] ^slicing.rules = #open
* processing.time[x] contains
    timeDateTime 1..1 MS
* processing.time[timeDateTime] 
* processing.timeDateTime only dateTime
* processing.timeDateTime ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* processing.timeDateTime MS