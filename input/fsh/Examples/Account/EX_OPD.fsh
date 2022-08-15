// Account
Instance: AccountOpdEncounter1
InstanceOf: Account
Title: "ตัวอย่าง Account: ข้อมูลทางการเงินของผู้ป่วยมารับบริการ OPD"
Description: "ข้อมูลทางการเงินของผู้ป่วยมารับบริการ OPD"
Usage: #example
* status = #active
* name = "บัญชี นางสมควร ใจดี VN 65-XXXXX"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* servicePeriod
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* coverage[0]
  * coverage = Reference(Coverage/CoverageUC) "หลักประกันสุขภาพถ้วนหน้า"
  * priority = 1
* coverage[+]
  * coverage = Reference(Coverage/CoverageSSO) "กองทุนประกันสังคม"
  * priority = 2
* owner = Reference(Organization/OrganizationMain)