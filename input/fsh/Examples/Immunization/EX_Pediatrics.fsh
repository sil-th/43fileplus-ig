Instance: immunization-baby1
InstanceOf: Immunization
Title: "ตัวอย่าง Immunization: การมารับบริการฉีดวัคซีน"
Description: "การมารับบริการฉีดวัคซีน"
Usage: #example
* status = #completed
* vaccineCode
  * coding[0] = $CS_THCC_VaccineCode#031 "DTP1"
  * coding[+] = $CS_TMT#741649 "DTP VACCINE (PT. BIO FARMA, INDONESIA)"
  * text = "วัคซีนป้องกันคอตีบ, บาดทะยัก, ไอกรน เข็มที่ 1"
* patient = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* encounter = Reference(Encounter/encounter-vaccine1)
* occurrenceDateTime = "2022-03-21T15:00:02+07:00"
* location
  * display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
* manufacturer
  * display = "บริษัท ยา แห่งหนึ่ง จำกัด"
* lotNumber = "AAJN11K"
* expirationDate = "2023-02-15"
* performer[0]
  * function = $CS_HL7_ProviderRole#OP
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* performer[+]
  * function = $CS_HL7_ProviderRole#AP
  * actor = Reference(Practitioner/practitioner-nurse1) "นาง สมอมร จริงใจ"
* note
  * text = "ข้อมูลอื่นเพิ่มเติม"
* reaction
  * detail
    * display = "ไม่พบอาการผิดปกติ"