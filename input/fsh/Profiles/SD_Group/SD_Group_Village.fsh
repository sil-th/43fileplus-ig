Profile: MophPcGroupVillage
Parent: Group
Id: mophpc-group-village
Title: "MoPH43p Group: Village"
Description: "ข้อมูลกลุ่มประชากรที่อาศัยอยู่ในหมู่บ้าน"
* ^url = $SD_Group_Village
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* type MS
* type = #person (exactly)
* name MS
* characteristic MS
* characteristic.code MS
* characteristic.code ^short = "สถานภาพในหมู่บ้าน"
* characteristic.code.coding ^slicing.discriminator[0].type = #value
* characteristic.code.coding ^slicing.discriminator[=].path = "system"
* characteristic.code.coding ^slicing.rules = #open
* characteristic.code.coding contains
    snomed 0..1 MS
* characteristic.code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED"
* characteristic.code.coding[snomed].system 1..
* characteristic.code.coding[snomed].system = $SCT (exactly)
* characteristic.code.coding[snomed].code 1..
* characteristic
  * value[x] MS