Instance: bundle-file10-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 10: WOMEN"
Description: "ข้อมูลหญิงวัยเจริญพันธุ์ที่อยู่กินกับสามี ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ ประกอบด้วย Patient และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-10"
  * resource = composition-file-10
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-woman-contraceptive1"
  * resource = observation-woman-contraceptive1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-woman-no-contraceptive-reason1"
  * resource = observation-woman-no-contraceptive-reason1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-woman-num-parity1"
  * resource = observation-woman-num-parity1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-woman-num-living-birth1"
  * resource = observation-woman-num-living-birth1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-woman-num-abortion1"
  * resource = observation-woman-num-abortion1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-woman-num-stillbirth1"
  * resource = observation-woman-num-stillbirth1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main

Instance: composition-file-10
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 10: WOMEN"
Description: "Composition ของแฟ้มที่ 10"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#10 "WOMEN"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 10 WOMEN: ข้อมูลหญิงวัยเจริญพันธุ์ที่อยู่กินกับสามี ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลหญิงวัยเจริญพันธุ์"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ประวัติการตั้งครรภ์"
  * entry[0] = Reference(Observation/observation-woman-contraceptive1)
  * entry[+] = Reference(Observation/observation-woman-no-contraceptive-reason1)
  * entry[+] = Reference(Observation/observation-woman-num-parity1)
  * entry[+] = Reference(Observation/observation-woman-num-living-birth1)
  * entry[+] = Reference(Observation/observation-woman-num-abortion1)
  * entry[+] = Reference(Observation/observation-woman-num-stillbirth1)