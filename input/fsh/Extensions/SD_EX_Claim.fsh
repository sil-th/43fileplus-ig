// Alias: $EX_TH_ItemCost = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-item-cost
// * item
//   * sequence = 1
//   * productOrService = $CS_TH_FeeCategory#4 "หมวดที่ 4 ค่ายากลับบ้าน"
//   * detail
//     * extension[0]
//       * url = $EX_TH_ItemCost
//       * valueMoney
//         * value = 50.0
//         * currency = $ISO4217#THB
Extension: EX_TH_ItemCost
Id: ex-claim-item-cost
Title: "ราคาทุนของรายการนั้น"
Description: "ราคาทุนของรายการนั้น"
* ^url = $EX_TH_ItemCost
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail.subDetail"
* . 0..*
* . ^short = "ราคาทุนของรายการนั้น"
* . ^definition = "ราคาทุนของรายการนั้น"
* value[x] 1..
* value[x] only Money






// Alias: $EX_TH_ItemCopay = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-item-self-pay
// * item
//   * sequence = 1
//   * productOrService = $CS_TH_FeeCategory#4 "หมวดที่ 4 ค่ายากลับบ้าน"
//   * detail
//     * extension[+]
//       * url = $EX_TH_ItemCopay
//       * valueMoney
//         * value = 0.0
//         * currency = $ISO4217#THB
Extension: EX_TH_ItemCopay
Id: ex-claim-item-copay
Title: "ค่าบริการที่ต้องจ่าย ของรายการนั้น"
Description: "ค่าบริการที่ต้องจ่าย ของรายการนั้น"
* ^url = $EX_TH_ItemCopay
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail.subDetail"
* . 0..*
* . ^short = "ค่าบริการที่ต้องจ่าย ของรายการนั้น"
* . ^definition = "ค่าบริการที่ต้องจ่าย ของรายการนั้น"
* value[x] 1..
* value[x] only Money







// Alias: $EX_TH_ItemPaid = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-item-actual-self-pay
Extension: EX_TH_ItemPaid
Id: ex-claim-item-paid
Title: "ค่าบริการที่ได้จ่ายไปแล้ว ของรายการนั้น"
Description: "ค่าบริการที่ได้จ่ายไปแล้ว ของรายการนั้น"
* ^url = $EX_TH_ItemPaid
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail.subDetail"
* . 0..*
* . ^short = "ค่าบริการที่ได้จ่ายไปแล้ว ของรายการนั้น"
* . ^definition = "ค่าบริการที่ได้จ่ายไปแล้ว ของรายการนั้น"
* value[x] 1..
* value[x] only Money








// Alias: $EX_TH_ItemUnpaid = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-item-unpaid
Extension: EX_TH_ItemUnpaid
Id: ex-claim-item-unpaid
Title: "ค่าบริการที่ยังไม่ได้จ่าย ของรายการนั้น"
Description: "ค่าบริการที่ยังไม่ได้จ่าย ของรายการนั้น"
* ^url = $EX_TH_ItemUnpaid
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.iten.detail.subDetail"
* . 0..*
* . ^short = "ค่าบริการที่ยังไม่ได้จ่าย ของรายการนั้น"
* . ^definition = "ค่าบริการที่ยังไม่ได้จ่าย ของรายการนั้น"
* value[x] 1..
* value[x] only Money








// Alias: $EX_TH_TotalCost = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-total-cost
// * extension[0]
//   * url = $EX_TH_TotalCost
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_TotalCost
Id: ex-claim-total-cost
Title: "ราคาทุน ทั้งหมด"
Description: "ราคาทุน ทั้งหมด"
* ^url = $EX_TH_TotalCost
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Claim"
* . 0..*
* . ^short = "ราคาทุน ทั้งหมด"
* . ^definition = "ราคาทุน ทั้งหมด"
* value[x] 1..
* value[x] only Money







// Alias: $EX_TH_TotalCopay = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-total-self-pay
// * extension[+]
//   * url = $EX_TH_TotalCopay
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_TotalCopay
Id: ex-claim-total-copay
Title: "ราคาร่วมจ่าย ทั้งหมด"
Description: "ราคาร่วมจ่าย ทั้งหมด"
* ^url = $EX_TH_TotalCopay
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Claim"
* . 0..*
* . ^short = "ราคาร่วมจ่าย ทั้งหมด"
* . ^definition = "ราคาร่วมจ่าย ทั้งหมด"
* value[x] 1..
* value[x] only Money







// Alias: $EX_TH_TotalPaid = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-total-actual-self-pay
// * extension[+]
//   * url = $EX_TH_TotalPaid
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_TotalPaid
Id: ex-claim-total-paid
Title: "จำนวนเงินที่ได้จ่ายไปแล้ว"
Description: "จำนวนเงินที่ได้จ่ายไปแล้ว"
* ^url = $EX_TH_TotalPaid
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Claim"
* . 0..*
* . ^short = "จำนวนเงินที่ได้จ่ายไปแล้ว"
* . ^definition = "จำนวนเงินที่ได้จ่ายไปแล้ว"
* value[x] 1..
* value[x] only Money







// Alias: $EX_TH_TotalUnpaid = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-total-unpaid
// * extension[+]
//   * url = $EX_TH_TotalUnpaid
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_TotalUnpaid
Id: ex-claim-total-unpaid
Title: "จำนวนเงินที่ยังไม่จ่าย"
Description: "จำนวนเงินที่ยังไม่จ่าย"
* ^url = $EX_TH_TotalUnpaid
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Claim"
* . 0..*
* . ^short = "จำนวนเงินที่ยังไม่จ่าย"
* . ^definition = "จำนวนเงินที่ยังไม่จ่าย"
* value[x] 1..
* value[x] only Money







// Alias: $EX_TH_FeeNote = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-claim-fee-note
// * extension[+]
//   * url = $EX_TH_FeeNote
//   * valueAnnotation
//     * text = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
Extension: EX_TH_FeeNote
Id: ex-claim-fee-note
Title: "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
Description: "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* ^url = $EX_TH_FeeNote
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Claim"
* . 0..*
* . ^short = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* . ^definition = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* value[x] 1..
* value[x] only Annotation







// Alias: $EX_TH_IpdDRG = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-ipd-drg
// * extension[+]
//   * url = $EX_TH_IpdDRG
//   * extension[0]
//     * url = "drg"
//     * valueString = "XXXXX"
//   * extension[+]
//     * url = "rw"
//     * valueString = "1788.0000"
//   * extension[+]
//     * url = "adjrw"
//     * valueString = "XXXX"
//   * extension[+]
//     * url = "error"
//     * valueString = "รหัสความผิดพลาด"
//   * extension[+]
//     * url = "warning"
//     * valueString = "รหัสคำเตือน"
//   * extension[+]
//     * url = "version"
//     * valueString = "XXXX"
Extension: EX_TH_IpdDRG
Id: ex-claim-ipd-drg
Title: "ข้อมูลเกี่ยวกับ DRG"
Description: "ข้อมูลเกี่ยวกับ DRG"
* ^url = $EX_TH_IpdDRG
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Claim"
* . 0..*
* . ^short = "ข้อมูลเกี่ยวกับ DRG"
* . ^definition = "ข้อมูลเกี่ยวกับ DRG"
* extension contains
    drg 0..1 and
    rw 0..1 and
    adjrw 0..1 and
    error 0..1 and
    warning 0..1 and
    version 0..1
* extension[drg] only Extension
* extension[drg] ^short = "กลุ่ม DRG"
* extension[drg] ^definition = "กลุ่ม DRG"
  * url only uri
  * value[x] 1..
  * value[x] only string
* extension[rw] only Extension
* extension[rw] ^short = "ค่าน้ำหนักสัมพัทธ์"
* extension[rw] ^definition = "ค่าน้ำหนักสัมพัทธ์"
  * url only uri
  * value[x] 1..
  * value[x] only string
* extension[adjrw] only Extension
* extension[adjrw] ^short = "ค่าน้ำหนักสัมพัทธ์ที่ปรับค่าแล้ว"
* extension[adjrw] ^definition = "ค่าน้ำหนักสัมพัทธ์ที่ปรับค่าแล้ว"
  * url only uri
  * value[x] 1..
  * value[x] only string
* extension[error] only Extension
* extension[error] ^short = "รหัสความผิดพลาดเกี่ยวกับข้อมูลผู้ป่วยใน"
* extension[error] ^definition = "รหัสความผิดพลาดเกี่ยวกับข้อมูลผู้ป่วยใน"
  * url only uri
  * value[x] 1..
  * value[x] only string
* extension[warning] only Extension
* extension[version] ^short = "รหัสคำเตือนเกี่ยวกับข้อมูลผู้ป่วยใน"
* extension[version] ^definition = "รหัสคำเตือนเกี่ยวกับข้อมูลผู้ป่วยใน"
  * url only uri
  * value[x] 1..
  * value[x] only string
* extension[version] only Extension
* extension[version] ^short = "รุ่นของโปรแกรม Grouper ที่ใช้ในการคำนวณ"
* extension[version] ^definition = "รุ่นของโปรแกรม Grouper ที่ใช้ในการคำนวณ"
  * url only uri
  * value[x] 1..
  * value[x] only string

