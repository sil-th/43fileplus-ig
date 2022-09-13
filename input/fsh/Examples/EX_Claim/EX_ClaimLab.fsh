Instance: claim-lab-encounter1
InstanceOf: $SD_Claim_Base
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการตรวจทางห้องปฏิบัติการ"
Description: "ค่าใช้จ่ายการรับบริการตรวจทางห้องปฏิบัติการ"
Usage: #example
* identifier[0]
  * type = $CS_TH_IdentifierType#localInvNo "เลขที่อ้างอิงใบแจ้งหนี้ของหน่วยบริการ"
  * system = $ID_LO_INV
  * value = "I056400272662"
* identifier[+]
  * type = $CS_TH_IdentifierType#localInvLt "เลขที่อ้างอิงชุดข้อมูลใบแจ้งหนี้ของหน่วยบริการ"
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
  * valueReference = Reference(Encounter/encounter-lab1)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/coverage-uc)
  * preAuthRef = "PP1007991295"
* item[0]
  * extension[0]
    * url = $EX_TH_ClaimItemCost
    * valueMoney
      * value = 50.0
      * currency = $ISO4217#THB
  * sequence = 1
  * productOrService = $SCT#9336009 "Chemical test, qualitative and quantitative"
  * unitPrice
    * value = 2000
    * currency = $ISO4217#THB