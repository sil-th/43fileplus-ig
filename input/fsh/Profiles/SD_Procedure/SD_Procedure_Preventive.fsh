Profile: Moph43pProcedurePreventive
Parent: Procedure
Id: moph43p-procedure-preventive
Title: "Procedure - Preventive (MoPH43p)"
Description: "กิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
* ^url = $SD_Procedure_Preventive
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
* code.coding[thcc] from $VS_THCC_CommunityActivity (extensible)
* code.coding[thcc] ^short = "รหัสมาตรฐาน THCC"
* code.coding[thcc].system 1..
* code.coding[thcc].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient or $SD_Group_Village)
* performer MS
* performer.function MS
* performer.function from $VS_THCC_LaborPerformerRole (extensible)
* performer.actor only Reference($SD_Practitioner)