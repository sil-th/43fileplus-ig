Profile: Moph43pProcedurePreventive
Parent: $SD_Procedure
Id: moph43p-procedure-preventive
Title: "MoPH43p Procedure: Preventive"
Description: "กิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
* ^url = $SD_Procedure_Preventive
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    thcc 0..1 MS
* code.coding[thcc] from $VS_THCC_CommunityActivity (extensible)
* code.coding[thcc] ^short = "รหัสมาตรฐาน THCC"
* code.coding[thcc].system 1..
* code.coding[thcc].code 1..
* subject only Reference($SD_Patient_Base or $SD_Group_Village)
