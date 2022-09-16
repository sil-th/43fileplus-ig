Instance: claim-ipd-encounter1
InstanceOf: $SD_Claim_Base
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ IPD"
Description: "แสดงค่าใช้จ่ายการรับบริการ IPD"
Usage: #example
* extension[0]
  * url = $EX_TH_ClaimTotalCost
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalCopay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalPaid
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalUnpaid
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimFeeNote
  * valueAnnotation
    * text = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* extension[+]
  * url = $EX_TH_ClaimIpdDRG
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
* created = "2022-05-10T14:30:02+07:00"
* provider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* priority = $CS_HL7_ProcessPriority#normal "Normal"
* supportingInfo[0]
  * sequence = 1
  * category = $CS_HL7_ClaimInfoCat#info "Information"
  * valueReference = Reference(Encounter/encounter-ipd1)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/coverage-uc)
  * preAuthRef = "PP1007991295"
* total
  * value = 200000
  * currency = $ISO4217#THB



Instance: claim-ipd-encounter2-full
InstanceOf: $SD_Claim_Base
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Description: "แสดงค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Usage: #example
* extension[0]
  * url = $EX_TH_ClaimTotalCost
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalCopay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalPaid
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalUnpaid
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimFeeNote
  * valueAnnotation
    * text = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
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
* created = "2022-05-10T14:30:02+07:00"
* provider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* priority = $CS_HL7_ProcessPriority#normal "Normal"
* supportingInfo[0]
  * sequence = 1
  * category = $CS_HL7_ClaimInfoCat#info "Information"
  * valueReference = Reference(Encounter/encounter-ipd2)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/coverage-uc)
  * preAuthRef = "PP1007991295"
* item  
  * extension[0]
    * url = $EX_TH_ClaimItemCost
    * valueMoney
      * value = 50.0
      * currency = $ISO4217#THB
  * extension[+]
    * url = $EX_TH_ClaimItemCopay
    * valueMoney
      * value = 0.0
      * currency = $ISO4217#THB
  * sequence = 1
  * category = $CS_TH_FeeCategory#4 "หมวดที่ 4 ค่ายากลับบ้าน"
  * productOrService
    * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
    * coding[+] = $CS_24Drug#100176000004493120381620 "AMOXICILLIN 500 MG TABLET, ORAL"
    * coding[+] = $CS_TH_LocalDrugCode#1233 "Local code amoxycillin 500 mg"
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
* total
  * value = 200000
  * currency = $ISO4217#THB




Instance: claim-ipd-encounter3-adp
InstanceOf: $SD_Claim_Base
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Description: "แสดงค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Usage: #example
* extension[0]
  * url = $EX_TH_ClaimTotalCost
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalCopay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalPaid
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimTotalUnpaid
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_ClaimFeeNote
  * valueAnnotation
    * text = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
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
* created = "2022-05-10T14:30:02+07:00"
* provider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* priority = $CS_HL7_ProcessPriority#normal "Normal"
* supportingInfo[0]
  * sequence = 1
  * category = $CS_HL7_ClaimInfoCat#info "Information"
  * valueReference = Reference(Encounter/encounter-ipd2)
* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/coverage-uc)
  * preAuthRef = "PP1007991295"
* item
  * sequence = 1
  * category = $CS_eClaim_AdpType#3 "ค่าบริการอื่นๆ ที่ยังไม่ได้จัดหมวด"
  * productOrService
    * text = "บริการที่ได้รับ"
  * detail
    * extension[0]
      * url = $EX_TH_ClaimItemCost
      * valueMoney
        * value = 50.0
        * currency = $ISO4217#THB
    * extension[+]
      * url = $EX_TH_ClaimItemCopay
      * valueMoney
        * value = 0.0
        * currency = $ISO4217#THB
    * sequence = 1
    * productOrService
      * text = "ADP code"
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
* total
  * value = 200000
  * currency = $ISO4217#THB