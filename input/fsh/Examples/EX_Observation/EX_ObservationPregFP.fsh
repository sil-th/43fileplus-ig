Instance: observation-fp-contraception1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: รหัสวิธีการคุมกำเนิดปัจจุบัน"
Description: "รหัสวิธีการคุมกำเนิดปัจจุบัน"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#86649-1 "Birth control method at intake Reported"
  * text = "Birth control method at intake Reported"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-01-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ContraceptiveMethod#1 "ยาเม็ดคุมกำเนิด"
  * text = "ยาเม็ดคุมกำเนิด"


Instance: observation-fp-preg-test1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการทดสอบการตั้งครรภ์"
Description: "ผลการทดสอบการตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#2106-3 "Choriogonadotropin (pregnancy test) [Presence] in Urine"
  * text = "Choriogonadotropin (pregnancy test) [Presence] in Urine"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-01-21T12:30:02+07:00"
* device
  * extension[0]
    * url = $EX_TH_ObservationDeviceAmount
    * valueQuantity = 1 '{#}' "Number"
  * identifier
    * type = $CS_TH_IdentifierType#localDevice "เลขระบุเวชภัณฑ์ ของหน่วยบริการ"
    * system = $ID_LO_Device
    * value =  "XXXXX"
  * display = "รหัสเวชภัณฑ์ที่ใช้ทดสอบ"
* valueCodeableConcept
  * coding[0] = $CS_HL7_ObsInterpret#POS "Positive"
  * text = "Positive"