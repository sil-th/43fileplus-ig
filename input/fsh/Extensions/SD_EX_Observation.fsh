Extension: EX_TH_IsCurrentJob
Id: ex-observation-is-current-job
Title: "Observation: Is Current Job"
Description: "งานที่ระบุเป็นงานปัจจุบันหรือไม่"
* ^url = $EX_TH_IsCurrentJob
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Observation"
* . 0..*
* . ^short = "จำนวนชิ้นของอุปกรณ์ที่ใช้ในการตรวจ"
* . ^definition = "จำนวนชิ้นของอุปกรณ์ที่ใช้ในการตรวจ"
* url = $EX_TH_IsCurrentJob (exactly)
* value[x] 1..1
* value[x] only boolean

// Alias: $EX_TH_PregTestAmount = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-preg-test-amount
// * device
//   * extension[0]
//     * url = $EX_TH_ObservationDeviceAmount
//     * valueQuantity = 1 '{#}' "Number"
Extension: EX_TH_ObservationDeviceAmount
Id: ex-observation-device-amount
Title: "Observation: Device Amount"
Description: "จำนวนชิ้นของอุปกรณ์ที่ใช้ในการตรวจ"
* ^url = $EX_TH_ObservationDeviceAmount
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Observation.device"
* . 0..*
* . ^short = "จำนวนชิ้นของอุปกรณ์ที่ใช้ในการตรวจ"
* . ^definition = "จำนวนชิ้นของอุปกรณ์ที่ใช้ในการตรวจ"
* url = $EX_TH_ObservationDeviceAmount (exactly)
* value[x] 1..
* value[x] only Quantity

