Instance: servicerequest-refer-main
InstanceOf: $SD_ServiceRequest_Refer
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยระหว่างสถานพยาบาล โดยย่อ"
Description: "แสดงการส่งต่อผู้ป่วยระหว่างสถานพยาบาล โดยย่อ"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_TH_IdentifierType#localReferNo "เลขที่การส่งต่อผู้ป่วย ของหน่วยบริการ"
  * system = $ID_LO_Refer
  * value = "XXXXXXX"
* status = #active
* intent = #order
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-opd1)
* authoredOn = "2021-03-31T12:30:02+07:00"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"


Instance: servicerequest-refer-main-full
InstanceOf: $SD_ServiceRequest_Refer
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
Description: "แสดงการส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
Usage: #example
* extension[0]
  * url = $EX_TH_ServiceRequestReferRequesterDetail
  * extension[0]
    * url = "organization"
    * valueReference = Reference(Organization/organization-main)
      * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  * extension[+]
    * url = "department"
    * valueReference.display = "แผนกเวชศาสตร์ฉุกเฉิน"
* extension[+]
  * url = $EX_TH_ServiceRequestReferPatientCatagory
  * valueCodeableConcept
    * coding[0] = $CS_43File_ReferEncounterClass#3 "ผู้ป่วยฉุกเฉิน (ยกเว้นอุบัติเหตุ)"
    * coding[+] = $CS_eClaim_ReferTypeEclaim#E "ฉุกเฉิน"
* extension[+]
  * url = $EX_TH_ServiceRequestReferStatus
  * valueCodeableConcept
    * coding[0] = $CS_Std15_ReferStatus#A "Accepted"
    * coding[+] = $CS_Std15_ReferAnswerType#1 "Accepted"
    * coding[+] = $CS_43File_ReferResult#1 "ตอบรับการส่งต่อ"
    * coding[+] = $CS_PCU_ReferOutcome#1 "สถานบริการปลายทางรับการส่งต่อผู้ป่วย"
* extension[+]
  * url = $EX_TH_ServiceRequestReferResultReason
  * valueString = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* extension[+]
  * url = $EX_TH_ServiceRequestReferRequestedPeriod
  * valuePeriod.end = "2021-04-30T12:30:02+07:00"
* extension[+]
  * url = $EX_HL7_PreCondition
  * valueCodeableConcept.text = "สภาพผู้ป่วยก่อนส่งต่อ" 
* identifier[0]
  * use = #official
  * type = $CS_TH_IdentifierType#localReferNo "เลขที่การส่งต่อผู้ป่วย ของหน่วยบริการ"
  * system = $ID_LO_Refer
  * value = "XXXXXXX"
* identifier[+]
  * use = #official
  * type = $CS_TH_IdentifierType#localReferPro "เลขที่การส่งต่อผู้ป่วยกลางของจังหวัด"
  * system = $ID_LO_ReferProvince
  * value = "XXXXXXX"
* identifier[+]
  * use = #official
  * type = $CS_TH_IdentifierType#localReferDoc "เลขเอกสารของสถานพยาบาลต้นทาง"
  * system = $ID_LO_ReferDocument
  * value = "XXXXXXX"
* status = #active
* intent = #order
* priority = #stat
  * extension[0]
    * url = $EX_TH_ServiceRequestThaiReferPriority
    * valueCodeableConcept
      * coding[0] = $CS_THCC_ReferThaiPriority#2 "emergency"
      * coding[+] = $CS_eClaim_ReferThaiPriority#E "Emergency"
  * extension[+]
    * url = $EX_TH_ServiceRequestReferPriorityReason
    * valueCodeableConcept = $CS_eClaim_ReferPriorityCode#1 "ต้องการรักษาเป็นการด่วน"
* code
  * coding[0] = $CS_43Plus_ReferReason#1 "เพื่อการวินิจฉัยและรักษา"
  * coding[+] = $CS_Std15_ReferReason#1 "เพื่อการวินิจฉัยและการรักษา"
  * coding[+] = $CS_eClaim_ReferReason#1100 "วินิจฉัย และรักษา"
  * text = "สิ่งที่ต้องการให้สถานพยาบาลปลายทางดำเนินการ (ข้อความ)"
* quantityQuantity = 1 '{count}' "Count"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-refer1)
* occurrencePeriod
  * start =  "2021-03-31"
  * end = "2021-04-30"
* authoredOn = "2021-03-31T12:30:02+07:00"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* performer[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* performer[+].display = "แผนกเวชศาสตร์ฉุกเฉิน"
* locationCode.text = "ห้องฉุกเฉิน"
* reasonCode = $CS_43File_ReferSpecialDisease#99 "อื่นๆ"
* note.text = "เหตุผลในการส่งต่อ (อื่นๆ)"