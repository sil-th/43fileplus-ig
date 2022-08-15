// Remark this resource is trial-use with maturity 1

Instance: RehabDevice1
InstanceOf: DeviceRequest
Title: "ตัวอย่าง DeviceRequest: สั่งจ่ายอุปกรณ์พยุงตัว"
Description: "แสดงการสั่งจ่ายอุปกรณ์พยุงตัวให้ผู้ป่วย"
Usage: #example
* status = #completed
* intent = #order
* priority = #routine
* codeCodeableConcept = $CS_THCC_RehabDevice#8305 "อุปกรณ์พยุงลำตัว"
* parameter
  * valueQuantity = 1 '{count}' "Count"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/RehabEncounter1)
* authoredOn = "2022-03-10T17:30:02+07:00"
* requester = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"