Instance: encounter-rehab1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการฟื้นฟูสมรรถภาพ"
Description: "การรับบริการฟื้นฟูสมรรถภาพ"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[+] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* serviceType = $CS_THCC_RehabServiceType#9005602 "Microwave diathermy"
* priority
  * coding[0] = $CS_HL7_Priority#R "routine"
  * coding[+] = $CS_43Plus_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* period
  * start = "2022-03-10T12:30:02+07:00"
  * end = "2022-03-10T17:30:02+07:00"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")