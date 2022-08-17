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