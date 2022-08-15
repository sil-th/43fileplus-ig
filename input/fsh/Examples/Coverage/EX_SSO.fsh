Instance: CoverageSSO
InstanceOf: Coverage
Title: "ตัวอย่าง Coverage: สิทธิประกันสังคม"
Description: "แสดงการบันทึกสิทธิประกันสังคม"
Usage: #example
* identifier
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2022-01-01"
    * end = "2030-01-01"
* status = #active
* type
  * coding[0] = $CS_THCC_CoverageType#4200 "กองทุนประกันสังคม"
  * text = "กองทุนประกันสังคม"
* policyHolder = Reference(Organization/OrganizationSSO) "สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"
* subscriber = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* beneficiary = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* period
  * start = "2022-01-01"
  * end = "2025-01-01"
* payor = Reference(Organization/OrganizationSSO) "สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"