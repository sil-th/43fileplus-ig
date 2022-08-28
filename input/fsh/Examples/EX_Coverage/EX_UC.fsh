Instance: coverage-uc
InstanceOf: Coverage
Title: "ตัวอย่าง Coverage: หลักประกันสุขภาพถ้วนหน้า"
Description: "แสดงการบันทึกสิทธิหลักประกันสุขภาพถ้วนหน้า"
Usage: #example
* extension[0]
  * url = $EX_TH_CoverageContractedProvider
  * extension[0]
    * url = "type"
    * valueCodeableConcept
      * coding[0] = $CS_Meta_ProviderTypeCoverage#primary "สถานบริการหลัก"
      * text = "สถานพยาบาลหลัก"
  * extension[+]
    * url = "provider"
    * valueReference = Reference(organization-main)
      * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "2022-01-01"
* extension[+]
  * url = $EX_TH_CoverageContractedProvider
  * extension[0]
    * url = "type"
    * valueCodeableConcept
      * coding[0] = $CS_Meta_ProviderTypeCoverage#secondary "สถานบริการรอง"
      * text = "สถานบริการรอง"
  * extension[+]
    * url = "provider"
    * valueReference = Reference(organization-second)
      * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง 2")
* extension[+]
  * url = $EX_TH_CoverageContractedProvider
  * extension[0]
    * url = "type"
    * valueCodeableConcept
      * coding[0] = $CS_Meta_ProviderTypeCoverage#primary-care "สถานบริการปฐมภูมิ"
      * text = "สถานบริการปฐมภูมิ"
  * extension[+]
    * url = "provider"
    * valueReference = Reference(organization-fourth)
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
* policyHolder = Reference(Organization/organization-nhso) "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* subscriber = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* beneficiary = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* period
  * start = "2022-01-01"
  * end = "2025-01-01"
* payor = Reference(Organization/organization-nhso) "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"