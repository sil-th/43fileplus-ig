// Refer Out
Instance: servicerequest-refer-out-accident1
InstanceOf: ServiceRequest
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยหลังจากรับบริการแผนกฉุกเฉิน"
Description: "การส่งต่อผู้ป่วยหลังจากรับบริการแผนกฉุกเฉิน"
Usage: #example
* identifier[0]
  * use = #secondary
  * system = $ID_LO_Refer
  * value = "XXXXXXXX"
* status = #active
* intent = #order
* code = $CS_THCC_ReferReason#1 "เพื่อการวินิจฉัยและรักษา"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-accident1)
* authoredOn = "2022-03-01"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"