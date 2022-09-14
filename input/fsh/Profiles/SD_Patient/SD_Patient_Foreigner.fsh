Profile: Moph43pPatientForeigner
Parent: $SD_Patient_Base
Id: moph43p-patient-foreigner
Title: "MoPH43p Patient: Foreigner"
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ ซึ่งเป็นชาวต่างชาติ"
* ^url = $SD_Patient_Foreigner
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_PatientForeignerType named foreignerType 0..*
* extension[foreignerType] ^short = "รหัสความเป็นคนต่างด้าว (ถ้ามี)"
* extension[foreignerType] ^definition = "รหัสความเป็นคนต่างด้าว (ถ้ามี)"
* identifier contains
    workPermit 0..* 
* identifier[workPermit] ^short = "เลขที่ใบอนุญาตทำงาน (Work Permit)"
* identifier[workPermit]
  * type = $CS_HL7_IdentifierType#WP
  * system 1..
  * system = $ID_ThaiWorkPermit (exactly)
  * value 1..
  * value ^example.label = "เลขที่ใบอนุญาตทำงาน"
  * value ^example.valueString = "1234567890123"
