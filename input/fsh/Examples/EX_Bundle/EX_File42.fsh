Instance: bundle-file42-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 42: COMMUNITY_ACTIVITY"
Description: "ข้อมูลกิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ ประกอบด้วย Group, Encounter และ Procedure resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-42"
  * resource = composition-file-42
* entry[+]
  * fullUrl = "http://example.org/Group/group-patient-village1"
  * resource = group-patient-village1
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-community-activity1"
  * resource = encounter-community-activity1
* entry[+]
  * fullUrl = "http://example.org/Procedure/procedure-community-activity1"
  * resource = procedure-community-activity1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-42
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 42: COMMUNITY_ACTIVITY"
Description: "Composition ของแฟ้มที่ 42"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#42 "COMMUNITY_ACTIVITY"
* subject = Reference(Group/group-patient-village1) "ประชากรในหมู่บ้านสุขใจ แสนสุข"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 42 COMMUNITY_ACTIVITY: ข้อมูลกิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลชุมชน"
  * entry[0] = Reference(Group/group-patient-village1) "ประชากรในหมู่บ้านสุขใจ แสนสุข"
* section[+]
  * title = "ข้อมูลกิจกรรม"
  * entry[0] = Reference(Encounter/encounter-community-activity1)
  * entry[+] = Reference(Procedure/procedure-community-activity1)


