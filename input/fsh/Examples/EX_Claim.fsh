Instance: ClaimOpdEncounter1
InstanceOf: Claim
Title: "ค่าใช้จ่ายการรับบริการ OPD"
Description: "แสดงค่าใช้จ่ายการรับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_TotalCost
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalSelfPay
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalActualSelfPay
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalUnpaid
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_FeeNote
  * valueAnnotation
    * text = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* identifier[0]
  * system = $ID_LO_INV
  * value = "I056400272662"
* identifier[+]
  * system = $ID_LO_INV_LT
  * value = "I056400272662"
* status = #active
* type = $CS_HL7_ClaimType#institutional "Institutional"
* use = #claim
* patient = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* created = "2022-01-01T14:30:02+07:00"
* provider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* priority = $CS_HL7_ProcessPriority#normal "Normal"
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/CoverageUC)
  * preAuthRef = "PP1007991295"
* total
  * value = 2000
  * currency = $ISO4217#THB