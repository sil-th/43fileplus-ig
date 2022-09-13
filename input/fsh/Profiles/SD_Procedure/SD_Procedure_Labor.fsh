Profile: Moph43pProcedureLabor
Parent: $SD_Procedure_Base
Id: moph43p-procedure-labor
Title: "MoPH43p Procedure: Labor"
Description: "วิธีการคลอด"
* ^url = $SD_Procedure_Labor
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    thcc 0..1 MS
* code.coding[thcc] from $VS_THCC_LaborProcedure (extensible)
* code.coding[thcc] ^short = "รหัสมาตรฐาน THCC"
* code.coding[thcc].system 1..
* code.coding[thcc].code 1..
* performer MS
* performer.function MS
* performer.function from $VS_THCC_LaborPerformerRole (extensible)
* location.extension contains EX_TH_ProcedureLaborLocation named laborLocation 0..1 MS
* outcome.coding ^slicing.discriminator[0].type = #pattern
* outcome.coding ^slicing.discriminator[=].path = "$this"
* outcome.coding ^slicing.rules = #open
* outcome.coding contains
    thcc 0..1 MS
* outcome.coding[thcc] from $VS_THCC_PregnancyOutcome (extensible)
* outcome.coding[thcc] ^short = "รหัสมาตรฐาน THCC"
* outcome.coding[thcc].system 1..
* outcome.coding[thcc].code 1..