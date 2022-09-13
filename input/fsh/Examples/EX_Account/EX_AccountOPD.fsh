// Account
Instance: account-opd-encounter1
InstanceOf: $SD_Account_Base
Title: "ตัวอย่าง Account: ข้อมูลทางการเงินของผู้ป่วยมารับบริการ OPD"
Description: "ข้อมูลทางการเงินของผู้ป่วยมารับบริการ OPD"
Usage: #example
* extension
  * url = $EX_TH_AccountCoverageUse
  * valueCodeableConcept = $CS_43Plus_CoverageUse#1 "ใช้สิทธิ"
* status = #active
* name = "บัญชี นางสมควร ใจดี VN 65-XXXXX"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* servicePeriod
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* coverage[0]
  * coverage = Reference(Coverage/coverage-uc) "หลักประกันสุขภาพถ้วนหน้า"
  * priority = 1
* coverage[+]
  * coverage = Reference(Coverage/coverage-sso) "กองทุนประกันสังคม"
  * priority = 2
* owner = Reference(Organization/organization-main)