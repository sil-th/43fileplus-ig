Instance: claim-opd-encounter1
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ OPD"
Description: "แสดงค่าใช้จ่ายการรับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_ClaimTotalCost
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalCopay
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalPaid
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalUnpaid
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimFeeNote
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




Instance: claim-opd-encounter2
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ OPD บริการปฐมภูมิ"
Description: "แสดงค่าใช้จ่ายการรับบริการ OPD บริการปฐมภูมิ"
Usage: #example
* extension[0]
  * url = $EX_TH_ClaimTotalCost
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalCopay
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalPaid
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalUnpaid
  * valueMoney
    * value = 100.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimFeeNote
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
  * valueReference = Reference(Encounter/encounter-opd2)
* supportingInfo[+]
  * sequence = 2
  * category = $CS_HL7_ClaimInfoCat#info "Information"
  * valueReference = Reference(MedicationRequest/medicationrequest-opd-amoxicillin)
* procedure[0]
  * sequence = 1
  * procedureReference = Reference(Procedure/procedure-opd1)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/coverage-uc)
  * preAuthRef = "PP1007991295"
* item[0]
  * sequence = 1
  * productOrService
    * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
    * coding[+] = $CS_24Drug#100176000004493120381620 "AMOXICILLIN 500 MG TABLET, ORAL"
    * coding[+] = $ID_LO_Drug#1233 "Local code amoxycillin 500 mg"
    * text = "Amoxicillin"
  * quantity
    * value = 21
    * unit = "Capsule"
    * system = $SCT
    * code = #732937005
  * unitPrice
    * value = 10.0
    * currency = $ISO4217#THB
  * net
    * value = 210.0
    * currency = $ISO4217#THB
* item[+]
  * sequence = 2
  * procedureSequence = 1
  * productOrService
    * coding[0] = $SCT#225358003 "Wound care"
    * coding[+] = $ICD9CM#93.57 "Application of other wound dressing"
    * coding[+] = $CS_TH_ICD10TM#XXX "ICD-10-TM CODE"
    * coding[+] = $ID_LO_Procedure#XXX "Local code"
    * text = "Wound care"
  * quantity
    * value = 1
  * unitPrice
    * value = 10.0
    * currency = $ISO4217#THB
  * net
    * value = 210.0
    * currency = $ISO4217#THB
* total
  * value = 2000
  * currency = $ISO4217#THB