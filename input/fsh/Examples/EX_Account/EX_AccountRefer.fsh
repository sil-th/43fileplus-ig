// Account
Instance: account-refer-encounter1
InstanceOf: $SD_Account_Base
Title: "ตัวอย่าง Account: ข้อมูลทางการเงินของผู้ป่วยมารับบริการแผนกฉุกเฉิน และส่งต่อ"
Description: "ข้อมูลทางการเงินของผู้ป่วยมารับบริการแผนกฉุกเฉิน และส่งต่อ"
Usage: #example
* status = #active
* name = "บัญชี นางสมควร ใจดี VN 65-XXXXX"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* servicePeriod
  * start = "2021-03-31T10:30:02+07:00"
  * end = "2021-03-31T12:30:02+07:00"
* coverage[0]
  * coverage = Reference(Coverage/coverage-uc) "หลักประกันสุขภาพถ้วนหน้า"
  * priority = 1
* coverage[+]
  * coverage = Reference(Coverage/coverage-sso) "กองทุนประกันสังคม"
  * priority = 2
* owner = Reference(Organization/organization-main)

