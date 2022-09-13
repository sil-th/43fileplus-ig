// Remark this resource is trial-use with maturity 1

Instance: devicerequest-ipd-device1
InstanceOf: $SD_DeviceRequest_Base
Title: "ตัวอย่าง DeviceRequest: สั่งจ่ายอุปกรณ์กลับบ้าน"
Description: "แสดงการสั่งจ่ายอุปกรณ์กลับบ้าน"
Usage: #example
* extension
  * url = $EX_TH_DeviceRequestUseLocation
  * valueCodeableConcept = $CS_eClaim_MedicationCategory#2 "ใช้ที่บ้าน"
* status = #completed
* intent = #order
* priority = #routine
* codeReference = Reference(Device/device-ipd-device1)
* parameter
  * code = $SCT#246205007 "Quantity"
  * valueQuantity = 1 '{#}' "Number"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-rehab1)
* authoredOn = "2022-05-10T14:30:02+07:00"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"