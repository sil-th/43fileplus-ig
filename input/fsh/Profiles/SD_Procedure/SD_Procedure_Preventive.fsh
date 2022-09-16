Profile: Moph43pProcedurePreventive
Parent: $SD_Procedure_Base
Id: moph43p-procedure-preventive
Title: "MoPH43p Procedure: Preventive"
Description: "กิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
* ^url = $SD_Procedure_Preventive
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding contains
    thccPrev 0..1 MS
* code.coding[thccPrev] from $VS_THCC_CommunityActivity (extensible)
* code.coding[thccPrev] ^short = "รหัสกิจกรรมในชุมชน"
* code.coding[thccPrev].system = $CS_THCC_CommunityActivity (exactly)
* code.coding[thccPrev].system 1..
* code.coding[thccPrev].code 1..
