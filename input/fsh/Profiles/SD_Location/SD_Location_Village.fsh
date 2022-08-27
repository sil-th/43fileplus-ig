Profile: Moph43pLocationVillage
Parent: Location
Id: moph43p-location-village
Title: "MoPH43p Location: Village"
Description: "ข้อมูลหมู่บ้าน"
* ^url = $SD_Location_Village
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_VillageArea named area 0..1 MS and
    $EX_TH_VillageMainHospital named mainHospital 0..1 MS and
    $EX_TH_VillageUnlistDate named unlistDate 0..1 MS
* extension[area] ^short = "เขตที่ตั้ง"
* extension[mainHospital] ^short = "โรงพยาบาลหลัก"
* extension[unlistDate] ^short = "วันที่แยกชุมชนออกนอกเขต"
* extension[unlistDate] ^definition = "วันที่ชุมชนนี้ แยกไปอยู่นอกเขตรับผิดชอบ กรณีแบ่งพื้นที่ใหม่"
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains village 0..1 MS
* identifier[village] ^short = "รหัสหมู่บ้าน"
* identifier[village].system 1..
* identifier[village].system = $ID_DopaVillageNo (exactly)
* identifier[village].value 1..
* name MS
* name ^short = "ชื่อหมู่บ้าน"
* description MS
* address MS
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension ^min = 0
* address.extension contains
    $EX_TH_StructureLine named lineStructure 0..1 MS
* address.postalCode MS
* position MS
* position.longitude MS
* position.longitude ^short = "พิกัดที่ตั้งของหมู่บ้าน (ลองจิจูด)"
* position.longitude ^definition = "พิกัดลองจิจูดของหมู่บ้าน (ใจกลางหมู่บ้าน) เช่น  13.847719 เป็นต้น"
* position.latitude MS
* position.latitude ^short = "พิกัดที่ตั้งของหมู่บ้าน (ละติจูด)"
* position.latitude ^definition = "พิกัดละติจูดของหมู่บ้าน (ใจกลางหมู่บ้าน) เช่น  13.847719 เป็นต้น"