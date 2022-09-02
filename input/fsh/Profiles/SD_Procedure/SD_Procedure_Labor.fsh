Profile: Moph43pProcedureLabor
Parent: Procedure
Id: moph43p-procedure-labor
Title: "MoPH43p Procedure: Labor"
Description: "วิธีการคลอด"
* ^url = $SD_Procedure_Labor
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_ProcedureProcedureType named procedureType 0..*
* status MS
* code MS
* code ^short = "รหัสการให้บริการ"
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1 and
    thcc 0..1 MS
* code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED"
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* code.coding[thcc] from $VS_THCC_LaborProcedure (extensible)
* code.coding[thcc] ^short = "รหัสมาตรฐาน THCC"
* code.coding[thcc].system 1..
* code.coding[thcc].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* performed[x] MS
* performedDateTime MS
* performer MS
* performer.function MS
* performer.function from $VS_THCC_LaborPerformerRole (extensible)
* performer.actor only Reference($SD_Practitioner)
* location.extension contains EX_TH_ProcedureLaborLocation named laborLocation 0..1 MS
* outcome MS
* note MS