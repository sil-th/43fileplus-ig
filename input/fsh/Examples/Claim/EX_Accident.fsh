Instance: ClaimAccidentEncounter1
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการแผนกฉุกเฉิน"
Description: "แสดงค่าใช้จ่ายการรับบริการแผนกฉุกเฉิน"
Usage: #example
* status = #draft
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
  * valueReference = Reference(Encounter/AccidentEncounter1)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/CoverageUC)
  * preAuthRef = "PP1007991295"
