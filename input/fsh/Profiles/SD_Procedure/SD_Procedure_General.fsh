Profile: Moph43pProcedure
Parent: Procedure
Id: moph43p-procedure
Title: "MoPH43p Procedure"
Description: "การทำหัตถการหรือการรักษา"
* ^url = $SD_Procedure
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
    snomed 0..1 and
    thcc 0..1 MS
* code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED"
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* code.coding[thcc] from $VS_43File_ReferCareProcedure (extensible)
* code.coding[thcc] ^short = "รหัสมาตรฐาน THCC"
* code.coding[thcc].system 1..
* code.coding[thcc].system = $CS_43File_ReferCareProcedure (exactly)
* code.coding[thcc].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* performed[x] MS
* performed[x] ^slicing.discriminator[0].type = #type
* performed[x] ^slicing.discriminator[=].path = "$this"
* performed[x] ^slicing.rules = #closed
* performedPeriod ^sliceName = "performedPeriod"
* performedDateTime ^sliceName = "performedDateTime"
* performer MS
* performer.function MS
* performer.function from $VS_THCC_LaborPerformerRole (extensible)
* performer.actor only Reference($SD_Practitioner)
* outcome MS
* note MS