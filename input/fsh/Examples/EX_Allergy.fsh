Instance: AllergyIntolerance1
InstanceOf: AllergyIntolerance
Title: "ตัวอย่าง AllergyIntolerance: ประวัติการแพ้ยาและสิ่งอื่น ๆ"
Description: "ประวัติการแพ้ยา อาหาร เวชภัณฑ์ สิ่งแวดล้อม สารเคมี ฯลฯ"
Usage: #example
* extension[0]
  * url = $EX_TH_AllergyCertainy
  * valueCodeableConcept
    * coding[0] = $CS_THCC_AllergyCertainy#1 "certain"
* extension[+]
  * url = $EX_TH_AllergySeverity
  * valueCodeableConcept
    * coding[0] = $CS_THCC_AllergySeverity#1 "ไม่ร้ายแรง (Non-serious)"
* extension[+]
  * url = $EX_TH_AllergyAssertType
  * valueCodeableConcept
    * coding[0] = $CS_THCC_AllergyAssertType#3 "สถานพยาบาลอื่นเป็นผู้ให้ข้อมูล"
* extension[+]
  * url = $EX_TH_AllergyAssertOrg
  * valueReference = Reference(Organization/OrganizationMain)
* clinicalStatus = $CS_HL7_AlleryActive#active "Active"
* verificationStatus
  * coding[0] = $CS_HL7_AllergyVerify#confirmed "Confirmed"
  * coding[+] = $CS_THCC_AllergyVerify#1 "แพ้"
* category = #medication
* code
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_24Drug#100176000004493120381620 "AMOXICILLIN 500 MG TABLET, ORAL"
  * coding[+] = $ID_LO_Drug#1233 "Local code amoxycillin 500 mg"
  * text = "Amoxycillin 500 mg"
* patient = Reference(Patient/Patient4)
* recordedDate = "2022-05-29"
* recorder = Reference(Practitioner/PractitionerDoctor1)
* reaction
  * manifestation
    * coding[0] = $SCT#28926001 "Eruption caused by drug"
    * coding[+] = $CS_THCC_AllergyManifest#26 "L27.19"
    * text = "ผื่นขึ้นหลังได้ยา"