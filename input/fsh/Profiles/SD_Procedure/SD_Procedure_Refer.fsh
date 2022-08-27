Profile: Moph43pProcedureRefer
Parent: Procedure
Id: moph43p-procedure-refer
Title: "MoPH43p Procedure: Refer"
Description: "การส่งต่อผู้ป่วยไปยังสถานพยาบาลอื่น"
* ^url = $SD_Procedure_Refer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* code MS
* code ^short = "รหัสการให้บริการ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 1..1 MS
* code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED"
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* code.coding[snomed].code = #19712007 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)