Instance: CoverageUC
InstanceOf: Coverage
Title: "หลักประกันสุขภาพถ้วนหน้า"
Description: "แสดงการบันทึกสิทธิหลักประกันสุขภาพถ้วนหน้า"
Usage: #example
* extension[0]
  * url = $EX_TH_ProviderTypeCoverage
  * extension[0]
    * url = "type"
    * valueCodeableConcept
      * coding[0] = $CS_THCC_ProviderTypeCoverage#primary "สถานบริการหลัก"
      * text = "สถานพยาบาลหลัก"
  * extension[+]
    * url = "provider"
    * valueReference = Reference(OrganizationMain)
      * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "2022-01-01"
* extension[+]
  * url = $EX_TH_ProviderTypeCoverage
  * extension[0]
    * url = "type"
    * valueCodeableConcept
      * coding[0] = $CS_THCC_ProviderTypeCoverage#secondary "สถานบริการรอง"
      * text = "สถานบริการรอง"
  * extension[+]
    * url = "provider"
    * valueReference = Reference(OrganizationSecond)
      * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง 2")
* extension[+]
  * url = $EX_TH_ProviderTypeCoverage
  * extension[0]
    * url = "type"
    * valueCodeableConcept
      * coding[0] = $CS_THCC_ProviderTypeCoverage#primary-care "สถานบริการปฐมภูมิ"
      * text = "สถานบริการปฐมภูมิ"
  * extension[+]
    * url = "provider"
    * valueReference = Reference(OrganizationFourth)
      * insert GeneralReference($ID_Hcode, "XXXXX", "สถานพยาบาลปฐมภูมิ")
* identifier
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2022-01-01"
    * end = "2030-01-01"
* status = #active
* type
  * coding[0] = $CS_THCC_CoverageType#0100 "หลักประกันสุขภาพ"
  * text = "หลักประกันสุขภาพ"
* policyHolder = Reference(Organization/OrganizationNHSO) "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* subscriber = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* beneficiary = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* period
  * start = "2022-01-01"
  * end = "2025-01-01"
* payor = Reference(Organization/OrganizationNHSO) "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"



Instance: CoverageSSO
InstanceOf: Coverage
Title: "สิทธิประกันสังคม"
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