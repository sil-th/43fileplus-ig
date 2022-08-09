Instance: File10Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 10: WOMEN"
Description: "ข้อมูลหญิงวัยเจริญพันธุ์ที่อยู่กินกับสามี ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ ประกอบด้วย Patient และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File10Composition"
  * resource = File10Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Observation/Contraceptive"
  * resource = Contraceptive
* entry[+]
  * fullUrl = "http://example.org/Observation/NoContraceptiveReason"
  * resource = NoContraceptiveReason
* entry[+]
  * fullUrl = "http://example.org/Observation/NumParity"
  * resource = NumParity
* entry[+]
  * fullUrl = "http://example.org/Observation/NumLivingBirth"
  * resource = NumLivingBirth
* entry[+]
  * fullUrl = "http://example.org/Observation/NumAbortion"
  * resource = NumAbortion
* entry[+]
  * fullUrl = "http://example.org/Observation/NumStillbirth"
  * resource = NumStillbirth
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain

Instance: File10Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 10: WOMEN"
Description: "Composition ของแฟ้มที่ 10"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#10 "WOMEN"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 10 WOMEN: ข้อมูลหญิงวัยเจริญพันธุ์ที่อยู่กินกับสามี ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลหญิงวัยเจริญพันธุ์"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "ประวัติการตั้งครรภ์"
  * entry[0] = Reference(Observation/Contraceptive)
  * entry[+] = Reference(Observation/NoContraceptiveReason)
  * entry[+] = Reference(Observation/NumParity)
  * entry[+] = Reference(Observation/NumLivingBirth)
  * entry[+] = Reference(Observation/NumAbortion)
  * entry[+] = Reference(Observation/NumStillbirth)