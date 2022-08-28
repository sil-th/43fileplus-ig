Instance: bundle-file58-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 58: CHARGE_ADP"
Description: "ข้อมูลค่าใช้จ่ายเพิ่ม และบริการที่ยังไม่ได้จัดหมวด (ADP) ตามมาตรฐาน e-Claim ประกอบด้วย Patient, Encounter, Condition, Device, DeviceRequest, Observation และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-58"
  * resource = composition-file-58
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-ipd2"
  * resource = encounter-ipd2
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-ipd2-main"
  * resource = condition-ipd2-main

* entry[+]
  * fullUrl = "http://example.org/DeviceRequest/devicerequest-ipd-device1"
  * resource = devicerequest-ipd-device1
* entry[+]
  * fullUrl = "http://example.org/Device/device-ipd-device1"
  * resource = device-ipd-device1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ipd-covid"
  * resource = observation-ipd-covid
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ipd-barthel"
  * resource = observation-ipd-barthel
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ipd-gravida"
  * resource = observation-ipd-gravida
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ipd-ga"
  * resource = observation-ipd-ga
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ipd-thal-screening"
  * resource = observation-ipd-thal-screening
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ipd-lmp"
  * resource = observation-ipd-lmp

* entry[+]
  * fullUrl = "http://example.org/Claim/claim-ipd-encounter3-adp"
  * resource = claim-ipd-encounter3-adp
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-58
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 58: CHARGE_ADP"
Description: "Composition ของแฟ้มที่ 58"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#58 "CHARGE_ADP"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 58 CHARGE_ADP: ข้อมูลค่าใช้จ่ายเพิ่ม และบริการที่ยังไม่ได้จัดหมวด (ADP) ตามมาตรฐาน e-Claim"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลการรับบริการ"
  * entry[0] = Reference(Encounter/encounter-ipd2)
  * entry[+] = Reference(Condition/condition-ipd2-main)
  * entry[+] = Reference(DeviceRequest/devicerequest-ipd-device1)
  * entry[+] = Reference(Device/device-ipd-device1)
  * entry[+] = Reference(Observation/observation-ipd-covid)
  * entry[+] = Reference(Observation/observation-ipd-barthel)
  * entry[+] = Reference(Observation/observation-ipd-gravida)
  * entry[+] = Reference(Observation/observation-ipd-ga)
  * entry[+] = Reference(Observation/observation-ipd-thal-screening)
  * entry[+] = Reference(Observation/observation-ipd-lmp)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Claim/claim-ipd-encounter3-adp)
