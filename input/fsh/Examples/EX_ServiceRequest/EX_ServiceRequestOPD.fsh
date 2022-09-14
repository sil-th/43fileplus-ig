// Refer In
Instance: servicerequest-refer-in-opd1
InstanceOf: $SD_ServiceRequest_Refer
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยมารับบริการ OPD"
Description: "แสดงการส่งต่อผู้ป่วยมารับบริการ OPD"
Usage: #example
* status = #active
* intent = #order
* category[0] = $SCT#103696004 "Patient referral to specialist"
* category[+] = $CS_THCC_ReferReason#1 "เพื่อการวินิจฉัยและรักษา"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* authoredOn = "2021-12-01"
* requester = Reference(Practitioner/practitioner-doctor2) "พญ. สมศรี จริงใจ"

// Refer Out
Instance: servicerequest-refer-out-opd1
InstanceOf: $SD_ServiceRequest_Refer
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยมารับบริการ OPD"
Description: "แสดงการส่งต่อผู้ป่วยมารับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_ServiceRequestReferStatus
  * valueCodeableConcept = $CS_PCU_ReferOutcome#1 "สถานบริการปลายทางรับการส่งต่อผู้ป่วย"
* status = #active
* intent = #order
* category[0] = $SCT#703978000 "Referral to primary care service"
* category[+] = $CS_THCC_ReferReason#4 "เพื่อการดูแลต่อใกล้บ้าน"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-opd1)
* authoredOn = "2022-01-01"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"