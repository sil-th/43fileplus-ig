Instance: ClaimLabEncounter1
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการตรวจทางห้องปฏิบัติการ"
Description: "ค่าใช้จ่ายการรับบริการตรวจทางห้องปฏิบัติการ"
Usage: #example
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
* supportingInfo[0]
  * sequence = 1
  * category = $CS_HL7_ClaimInfoCat#info "Information"
  * valueReference = Reference(Encounter/LabEncounter1)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/CoverageUC)
  * preAuthRef = "PP1007991295"
* item
  * sequence = 1
  * productOrService = $SCT#9336009 "Chemical test, qualitative and quantitative"
  * unitPrice
    * value = 2000
    * currency = $ISO4217#THB