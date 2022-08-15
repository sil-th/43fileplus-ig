Instance: ClaimIpdEncounter1
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ IPD"
Description: "แสดงค่าใช้จ่ายการรับบริการ IPD"
Usage: #example
* extension[0]
  * url = $EX_TH_TotalCost
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalSelfPay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalActualSelfPay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalUnpaid
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_FeeNote
  * valueAnnotation
    * text = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* extension[+]
  * url = $EX_TH_IpdDRG
  * extension[0]
    * url = "drg"
    * valueString = "XXXXX"
  * extension[+]
    * url = "rw"
    * valueString = "1788.0000"
  * extension[+]
    * url = "adjrw"
    * valueString = "XXXX"
  * extension[+]
    * url = "error"
    * valueString = "รหัสความผิดพลาด"
  * extension[+]
    * url = "warning"
    * valueString = "รหัสคำเตือน"
  * extension[+]
    * url = "version"
    * valueString = "XXXX"
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
* created = "2022-05-10T14:30:02+07:00"
* provider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* priority = $CS_HL7_ProcessPriority#normal "Normal"
* supportingInfo[0]
  * sequence = 1
  * category = $CS_HL7_ClaimInfoCat#info "Information"
  * valueReference = Reference(Encounter/IpdEncounter1)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/CoverageUC)
  * preAuthRef = "PP1007991295"
* total
  * value = 200000
  * currency = $ISO4217#THB