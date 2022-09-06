Profile: Moph43pDevice
Parent: Device
Id: moph43p-device
Title: "MoPH43p Device"
Description: "อุปกรณ์/เวชภัณฑ์"
* ^url = $SD_Device
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains local 0..*
* identifier[local] ^short = "หมายเลขอุปกรณ์ที่สถานพยาบาลกำหนด"
* identifier[local].system 1..
* identifier[local].system obeys local-device-uri
* identifier[local].system ^example.label = "local device namespace"
* identifier[local].system ^example.valueUri = $ID_LO_Device
* identifier[local].value 1..
* serialNumber MS
* serialNumber ^short = "หมายเลข serial number"
* type MS
* type ^short = "ประเภทอุปกรณ์"
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains snomed 0..1
* type.coding[snomed].system 1..
* type.coding[snomed].system = $SCT (exactly)
* type.coding[snomed].code 1..

//Constraint
