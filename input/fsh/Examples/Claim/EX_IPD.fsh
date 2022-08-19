Instance: claim-ipd-encounter1
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
  * url = $EX_TH_TotalCopay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalPaid
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
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Description: "แสดงค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Usage: #example
* extension[0]
  * url = $EX_TH_TotalCost
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalCopay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalPaid
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
  * productOrService = $CS_TH_FeeCategory#4 "หมวดที่ 4 ค่ายากลับบ้าน"
  * detail
    * extension[0]
      * url = $EX_TH_ItemCost
      * valueMoney
        * value = 50.0
        * currency = $ISO4217#THB
    * extension[+]
      * url = $EX_TH_ItemCopay
      * valueMoney
        * value = 0.0
        * currency = $ISO4217#THB
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
* total
  * value = 200000
  * currency = $ISO4217#THB




Instance: claim-ipd-encounter3-adp
InstanceOf: Claim
Title: "ตัวอย่าง Claim: ค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Description: "แสดงค่าใช้จ่ายการรับบริการ IPD บริการที่ยังไม่ได้จัดหมวด"
Usage: #example
* extension[0]
  * url = $EX_TH_TotalCost
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalCopay
  * valueMoney
    * value = 10000.0
    * currency = $ISO4217#THB
* extension[+]
  * url = $EX_TH_TotalPaid
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
  * productOrService = $CS_eClaim_AdpType#3 "ค่าบริการอื่นๆ ที่ยังไม่ได้จัดหมวด"
  * detail
    * extension[0]
      * url = $EX_TH_ItemCost
      * valueMoney
        * value = 50.0
        * currency = $ISO4217#THB
    * extension[+]
      * url = $EX_TH_ItemCopay
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