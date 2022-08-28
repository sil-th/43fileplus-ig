Instance: servicerequest-refer-main
InstanceOf: ServiceRequest
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
Description: "แสดงการส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
Usage: #example
* identifier[0]
  * use = #official
  * system = $ID_LO_Refer
  * value = "XXXXXXX"
* status = #active
* intent = #order
// * category = $SCT#703978000 "Referral to primary care service"
// * code = $CS_THCC_ReferReason#4 "เพื่อการดูแลต่อใกล้บ้าน"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-opd1)
* authoredOn = "2021-03-31T12:30:02+07:00"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"


Instance: servicerequest-refer-main-full
InstanceOf: ServiceRequest
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
  * url = $EX_TH_ServiceRequestReferStatus
  * valueCodeableConcept = $CS_THCC_ReferStatus#A "Accepted"
* extension[+]
  * url = $EX_TH_ServiceRequestReferRequestedPeriod
  * valuePeriod.end = "2021-04-30T12:30:02+07:00"
* extension[+]
  * url = $EX_TH_ServiceRequestReferAnswerType
  * valueCodeableConcept = $CS_THCC_ReferAnswerType#1 "Accepted"
* extension[+]
  * url = $EX_HL7_PreCondition
  * valueCodeableConcept.text = "สภาพผู้ป่วยก่อนส่งต่อ" 
* extension[+]
  * url = $EX_TH_ServiceRequestReferPriorityCode
  * valueCodeableConcept = $CS_THCC_ReferPriorityCode#1 "ต้องการรักษาเป็นการด่วน"
* extension[+]
  * url = $EX_TH_ServiceRequestEclaimReferType
  * valueCodeableConcept = $CS_THCC_ReferTypeEclaim#E "ฉุกเฉิน"
* extension[+]
  * url = $EX_TH_ServiceRequestSpecialDiseaseRefer
  * valueCodeableConcept = $CS_THCC_ReferSpecialDisease#99 "อื่นๆ"
* identifier[0]
  * use = #official
  * system = $ID_LO_Refer
  * value = "XXXXXXX"
* identifier[+]
  * use = #official
  * system = $ID_LO_ReferProvince
  * value = "XXXXXXX"
* identifier[+]
  * use = #official
  * system = $ID_LO_ReferDocument
  * value = "XXXXXXX"
* basedOn
  * identifier
    * system = $ID_LO_Refer
    * value = "XXXXXXX"
* status = #active
* intent = #order
* category = $CS_THCC_ReferCategory#E "Emergency (ผู้ป่วยฉุกเฉิน)"
* priority = #stat
  * extension[+]
    * url = $EX_TH_ServiceRequestThaiReferPriority
    * valueCodeableConcept
      * coding[0] = $CS_THCC_ReferThaiPriorityStd43#2 "emergency"
      * coding[+] = $CS_THCC_ReferThaiPriorityStd15#E "Emergency"
* code
  * coding[0] = $CS_THCC_ReferReasonStd15#1 "เพื่อการวินิจฉัยและรักษา"
  * coding[+] = $CS_THCC_ReferReasonEclaim#1100 "วินิจฉัย และรักษา"
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
* note.text = "เหตุผลในการส่งต่อ (อื่นๆ)"