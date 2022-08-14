
Instance: ContraceptiveObs
InstanceOf: Observation
Title: "รหัสวิธีการคุมกำเนิดปัจจุบัน"
Description: "รหัสวิธีการคุมกำเนิดปัจจุบัน"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exan "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#86649-1 "Birth control method at intake Reported"
  * text = "Birth control method at intake Reported"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-01-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ContraceptiveMethod#9 "ไม่คุมกำเนิด"
  * text = "ไม่คุมกำเนิด"


Instance: PregnancyTest01
InstanceOf: Observation
Title: "ผลการทดสอบการตั้งครรภ์"
Description: "ผลการทดสอบการตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#86649-1 "Choriogonadotropin (pregnancy test) [Presence] in Urine"
  * text = "Choriogonadotropin (pregnancy test) [Presence] in Urine"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-01-21T12:30:02+07:00"
* device
  * extension[0]
    * url = $EX_TH_PregTestAmount
    * valueQuantity = 1 '{count}' "Count"
  * identifier
    * system = $ID_LO_Device
    * value =  "XXXXX"
  * display = "รหัสเวชภัณฑ์ที่ใช้ทดสอบ"
* valueCodeableConcept
  * coding[0] = $SCT#10828004 "Positive"
  * text = "Positive"