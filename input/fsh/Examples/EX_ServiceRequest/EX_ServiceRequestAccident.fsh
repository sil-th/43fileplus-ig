// Refer Out
Instance: servicerequest-refer-out-accident1
InstanceOf: ServiceRequest
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยหลังจากรับบริการแผนกฉุกเฉิน"
Description: "การส่งต่อผู้ป่วยหลังจากรับบริการแผนกฉุกเฉิน"
Usage: #example
* extension[0]
  * url = $EX_TH_ServiceRequestReferPatientCatagory
  * valueCodeableConcept
    * coding[0] = $CS_43File_ReferEncounterClass#3 "ผู้ป่วยฉุกเฉิน (ยกเว้นอุบัติเหตุ)"
    * coding[+] = $CS_eClaim_ReferTypeEclaim#E "ฉุกเฉิน"
* identifier[0]
  * use = #secondary
  * type = $CS_TH_IdentifierType#localReferNo "เลขที่การส่งต่อผู้ป่วย ของหน่วยบริการ"
  * system = $ID_LO_Refer
  * value = "XXXXXXXX"
* status = #active
* intent = #order
* category = $CS_THCC_ReferReason#1 "เพื่อการวินิจฉัยและรักษา"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-accident1)
* authoredOn = "2022-03-01"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
