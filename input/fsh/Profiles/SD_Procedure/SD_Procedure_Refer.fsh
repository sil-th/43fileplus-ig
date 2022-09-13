Profile: Moph43pProcedureRefer
Parent: $SD_Procedure_Base
Id: moph43p-procedure-refer
Title: "MoPH43p Procedure: Refer"
Description: "หัตถการที่ได้ทำระหว่างการส่งต่อผู้ป่วยไปยังสถานพยาบาลอื่น"
* ^url = $SD_Procedure_Refer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code ^short = "รหัสการให้บริการ"
* code.coding contains
    referProcedure 0..1 MS
* code.coding[referProcedure] ^short = "หัตถการที่ได้ทำระหว่างการส่งต่อ"
* code.coding[referProcedure] from $VS_43File_ReferCareProcedure (extensible)
* code.coding[referProcedure].system 1..
* code.coding[referProcedure].system = $CS_43File_ReferCareProcedure (exactly)
* code.coding[referProcedure].code 1..