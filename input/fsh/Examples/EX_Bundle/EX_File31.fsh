Instance: bundle-file31-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 31: NCDSCREEN"
Description: "ข้อมูลการให้บริการคัดกรองโรคเบาหวานและความดันโลหิตสูงสำหรับผู้ที่มารับบริการ ประกอบด้วย Patient, Encounter, Condition, และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-31"
  * resource = composition-file-31
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-ncd1"
  * resource = encounter-ncd1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-ncd-summary"
  * resource = condition-ncd-summary
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-ncd1"
  * resource = condition-ncd1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-vitalpanel1"
  * resource = observation-ncd-vitalpanel1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-wt1"
  * resource = observation-ncd-wt1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-ht1"
  * resource = observation-ncd-ht1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-bp1"
  * resource = observation-ncd-bp1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-bp2"
  * resource = observation-ncd-bp2
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-wc1"
  * resource = observation-ncd-wc1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-smoking1"
  * resource = observation-ncd-smoking1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-alcohol1"
  * resource = observation-ncd-alcohol1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-dm-fam1"
  * resource = observation-ncd-dm-fam1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-ht-fam1"
  * resource = observation-ncd-ht-fam1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-fbs"
  * resource = observation-ncd-fbs
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-hi-glucose1"
  * resource = observation-ncd-hi-glucose1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-dyslipid1"
  * resource = observation-ncd-dyslipid1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-gest-dm1"
  * resource = observation-ncd-gest-dm1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-foot1"
  * resource = observation-ncd-foot1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-ncd-retina1"
  * resource = observation-ncd-retina1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-31
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 31: NCDSCREEN"
Description: "Composition ของแฟ้มที่ 31"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#31 "NCDSCREEN"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 31 NCDSCREEN: ข้อมูลการให้บริการคัดกรองโรคเบาหวานและความดันโลหิตสูงสำหรับผู้ที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ข้อมูลการรับบริการคัดกรอง"
  * entry[0] = Reference(Encounter/encounter-ncd1)
  * entry[+] = Reference(Condition/condition-ncd-summary)
  * entry[+] = Reference(Condition/condition-ncd1)
  * entry[+] = Reference(Observation/observation-ncd-vitalpanel1)
  * entry[+] = Reference(Observation/observation-ncd-wt1)
  * entry[+] = Reference(Observation/observation-ncd-ht1)
  * entry[+] = Reference(Observation/observation-ncd-bp1)
  * entry[+] = Reference(Observation/observation-ncd-bp2)
  * entry[+] = Reference(Observation/observation-ncd-wc1)
  * entry[+] = Reference(Observation/observation-ncd-smoking1)
  * entry[+] = Reference(Observation/observation-ncd-alcohol1)
  * entry[+] = Reference(Observation/observation-ncd-dm-fam1)
  * entry[+] = Reference(Observation/observation-ncd-ht-fam1)
  * entry[+] = Reference(Observation/observation-ncd-fbs)
  * entry[+] = Reference(Observation/observation-ncd-hi-glucose1)
  * entry[+] = Reference(Observation/observation-ncd-dyslipid1)
  * entry[+] = Reference(Observation/observation-ncd-gest-dm1)
  * entry[+] = Reference(Observation/observation-ncd-foot1)
  * entry[+] = Reference(Observation/observation-ncd-retina1)