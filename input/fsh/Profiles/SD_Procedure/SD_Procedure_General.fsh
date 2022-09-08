Profile: Moph43pProcedure
Parent: Procedure
Id: moph43p-procedure
Title: "MoPH43p Procedure"
Description: "การทำหัตถการหรือการรักษา"
* ^url = $SD_Procedure
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
    icd9cm 0..1 and
    icd10tm 0..1 and
    local 0..1
* code.coding[snomed] ^short = "รหัสหัตถการมาตรฐานจาก SNOMED CT"
* code.coding[snomed].system = $SCT (exactly)
* code.coding[icd9cm] ^short = "รหัสหัตถการมาตรฐานจาก ICD-9CM"
* code.coding[icd9cm].system = $ICD9CM (exactly)
* code.coding[icd10tm] ^short = "รหัสหัตถการมาตรฐานจาก ICD-10TM"
* code.coding[icd10tm].system = $CS_TH_ICD10TM (exactly)
* code.coding[local] ^short = "รหัส local code ของสถานพยาบาล"
* code.coding[local].system obeys Local-procedure-uri
* code.coding[local].system ^example.label = "Procedure namespace"
* code.coding[local].system ^example.valueUri = $ID_LO_Procedure
* subject 1.. MS
* subject only Reference($SD_Patient or $SD_Group_Village)
* performed[x] MS
* performed[x] only dateTime or Period or string
* performer MS
  * function MS
  * actor only Reference($SD_Practitioner)
  * onBehalfOf MS
* location MS
* outcome MS
* note MS