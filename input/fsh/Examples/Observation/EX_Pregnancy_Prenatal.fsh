Instance: ObsOBGravida
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ครรภ์ที่"
Description: "ครรภ์ที่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueInteger = 2


Instance: ObsOBLMP
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันแรกของการมีประจำเดือนครั้งสุดท้าย"
Description: "วันแรกของการมีประจำเดือนครั้งสุดท้าย"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8665-2 "Last menstrual period start date"
  * text = "Last menstrual period start date"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueDateTime = "2021-03-01"



Instance: ObsOBEDC
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันที่กำหนดคลอด"
Description: "วันที่กำหนดคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#93857-1 "Date and time of obstetric delivery"
  * text = "Date and time of obstetric delivery"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueDateTime = "2021-12-01"



Instance: ObsOBVDRL
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจ VDRL"
Description: "ผลการตรวจ VDRL"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#5292-8 "Reagin Ab [Presence] in Serum by VDRL"
  * text = "Reagin Ab [Presence] in Serum by VDRL"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"


Instance: ObsOBHBsAg
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจ HB"
Description: "ผลการตรวจ HB"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#16935-9 "Hepatitis B virus surface Ab [Units/volume] in Serum"
  * text = "Hepatitis B virus surface Ab [Units/volume] in Serum"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"

Instance: ObsOBHIV
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจ HIV"
Description: "ผลการตรวจ HIV"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#55277-8 "HIV status"
  * text = "HIV status"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"

Instance: ObsOBHct
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจ HCT"
Description: "ผลการตรวจ HCT"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood"
  * text = "Hematocrit [Volume Fraction] of Blood"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueQuantity = 40 '%' "%"


Instance: ObsOBThal
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจคัดกรอง Thalassaemia"
Description: "ผลการตรวจคัดกรอง Thalassaemia"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $SCT#252290000 "Thalassemia screening"
  * text = "ผลการตรวจคัดกรอง Thalassaemia"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"

Instance: ObsOBHeight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ส่วนสูง (ซม.)"
Description: "ส่วนสูง (ซม.)"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueQuantity = 160 'cm' "cm"


Instance: ObsOBContraceptive
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วิธีวางแผนครอบครัวก่อนตั้งครรภ์นี้"
Description: "วิธีวางแผนครอบครัวก่อนตั้งครรภ์นี้"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#86649-1 "Birth control method at intake Reported"
  * text = "Birth control method at intake Reported"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ContraceptiveMethod#9 "ไม่คุมกำเนิด"
  * text = "ไม่คุมกำเนิด"


Instance: ObsOBGeneralSymptom
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาการผิดปกติจากการมาตรวจครั้งแรก"
Description: "อาการผิดปกติจากการมาตรวจครั้งแรก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#75322-8 "Complaint"
  * text = "อาการผิดปกติจากการมาตรวจครั้งแรก"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueString = "อาการผิดปกติจากการมาตรวจครั้งแรก"