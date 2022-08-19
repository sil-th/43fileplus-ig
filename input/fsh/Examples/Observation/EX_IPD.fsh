Instance: observation-ipd-covid
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจ Lab Covid"
Description: "ผลการตรวจ Lab Covid"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $SCT#871562009 "Detection of COVID-19"
  * text = "Detection of COVID-19"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#NEG "Negative"


Instance: observation-ipd-barthel
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ค่า Barthel ADL Index"
Description: "ค่า Barthel ADL Index"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#96761-2 "Total score Barthel Index"
  * text = "Total score Barthel Index"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueQuantity = 100 '{score}' "{score}"



Instance: observation-ipd-gravida
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ครรภ์ที่ - IPD"
Description: "ครรภ์ที่ - IPD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueInteger = 2




Instance: observation-ipd-ga
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อายุครรภ์ปัจจุบัน - IPD"
Description: "อายุครรภ์ปัจจุบัน - IPD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#57714-8 "Obstetric estimation of gestational age"
  * text = "Obstetric estimation of gestational age"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* dataAbsentReason = $CS_HL7_DataAbsentReason#not-applicable "Not Applicable"


Instance: observation-ipd-thal-screening
InstanceOf: Observation
Title: "ตัวอย่าง Observation: หัสค่าการคัดกรอง DCIP/E screen - IPD"
Description: "หัสค่าการคัดกรอง DCIP/E screen - IPD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $SCT#252290000 "Thalassemia screening"
  * text = "DCIP/E screen"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_HL7_ObsInterpret#NEG "Negative"
  * coding[+] = $CS_THCC_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"


Instance: observation-ipd-lmp
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันแรกของการมีประจำเดือนครั้งสุดท้าย IPD"
Description: "วันแรกของการมีประจำเดือนครั้งสุดท้าย IPD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#8665-2 "Last menstrual period start date"
  * text = "Last menstrual period start date"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueDateTime = "2021-03-01"


