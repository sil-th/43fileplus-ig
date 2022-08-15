Instance: claim-opd-encounter1
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ OPD"
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
* patient = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* created = "2022-01-01T14:30:02+07:00"
* provider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* priority = $CS_HL7_ProcessPriority#normal "Normal"
* supportingInfo[0]
  * sequence = 1
  * category = $CS_HL7_ClaimInfoCat#info "Information"
  * valueReference = Reference(Encounter/encounter-opd1)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/coverage-uc)
  * preAuthRef = "PP1007991295"
* total
  * value = 2000
  * currency = $ISO4217#THB