//Profile
Profile: Moph43pAllergyIntolerance
Parent: AllergyIntolerance
Id: moph43p-allergyintolerance
Title: "MoPH43p AllergyIntolerance"
Description: "ข้อมูลประวัติการแพ้ของผู้ป่วยที่มารับบริการ"
* ^url = $SD_AllergyIntolerance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_AllergyCertainy named certainy 0..1 MS and
    $EX_TH_AllergySeverity named severity 0..1 MS and
    $EX_TH_AllergyAssertType named assertType 0..1 MS
* extension[certainy] ^short = "ประเภทการวินิจฉัยการแพ้ยา"
* extension[certainy] ^definition = "ประเภทการวินิจฉัยการแพ้ยา 5 ประเภท"
* extension[severity] ^short = "ระดับความรุนแรงของการแพ้ยา"
* extension[severity] ^definition = "ระดับความรุนแรงของการแพ้ยา 8 ระดับ"
* extension[assertType] ^short = "ผู้ให้ประวัติการแพ้ยา"
* clinicalStatus MS
* clinicalStatus ^short = "สถานะการแพ้ยา"
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    24drug 0..1 MS and
    tmt 0..1 MS and
    local 0..1 MS
* code.coding[24drug] ^short = "รหัสยามาตรฐาน 24 หลัก"
* code.coding[24drug].system 1..
* code.coding[24drug].system = $CS_24Drug (exactly)
* code.coding[24drug].code 1..
* code.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* code.coding[tmt].system 1..
* code.coding[tmt].system = $CS_TMT (exactly)
* code.coding[tmt].code 1..
* code.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* code.coding[local].system 1..
* code.coding[local].system obeys Local-drug-uri
* code.coding[local].system ^comment = "กำหนดระบบข้อมูลตามรูปแบบ https://terms.sil-th.org/hcode/5/[XXXXX]/Drug โดย [XXXXX] คือ รหัสสถานพยาบาล 5 หลัก"
* code.coding[local].system ^example.label = "Local Drug Code namespace"
* code.coding[local].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/[XXXXX]/Drug"
* code.coding[local].code 1..
* patient only Reference($SD_Patient)
* patient MS
* recordedDate MS
* recorder only Reference($SD_Practitioner)
* recorder MS
* asserter MS
* reaction MS
* reaction.manifestation MS
