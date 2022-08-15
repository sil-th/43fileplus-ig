// Refer In
Instance: ReferInOpdEncounter1
InstanceOf: ServiceRequest
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยมารับบริการ OPD"
Description: "แสดงการส่งต่อผู้ป่วยมารับบริการ OPD"
Usage: #example
* status = #active
* intent = #order
* category = $SCT#103696004 "Patient referral to specialist"
* code = $CS_THCC_ReferReason#1 "เพื่อการวินิจฉัยและรักษา"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* authoredOn = "2021-12-01"
* requester = Reference(Practitioner/PractitionerDoctor2) "พญ. สมศรี จริงใจ"

// Refer Out
Instance: ReferOutOpdEncounter1
InstanceOf: ServiceRequest
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยมารับบริการ OPD"
Description: "แสดงการส่งต่อผู้ป่วยมารับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_ReferOutcome 
  * valueCodeableConcept = $CS_THCC_ReferOutcome#1 "สถานบริการปลายทางรับการส่งต่อผู้ป่วย"
* status = #active
* intent = #order
* category = $SCT#703978000 "Referral to primary care service"
* code = $CS_THCC_ReferReason#4 "เพื่อการดูแลต่อใกล้บ้าน"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/OpdEncounter1)
* authoredOn = "2022-01-01"
* requester = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"