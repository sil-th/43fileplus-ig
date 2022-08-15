
Instance: ContraceptiveObs
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
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-01-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ContraceptiveMethod#9 "ไม่คุมกำเนิด"
  * text = "ไม่คุมกำเนิด"


Instance: PregnancyTest01
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการทดสอบการตั้งครรภ์"
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



// Prenatal Encounter


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



// ANC

Instance: ObsAncGravida
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
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueInteger = 2


Instance: ObsAncPeriod
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ช่วงของการ ANC"
Description: "ช่วงของการ ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_MiscPregnancyObs#ancperiod 
  * text = "ช่วงของการ ANC ตามโครงสร้างข้อมูล 43 แฟ้ม แฟ้ม ANC"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueInteger = 1


Instance: ObsAncGA
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อายุครรภ์ (GA) ANC"
Description: "อายุครรภ์ (GA) ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#18185-9 "Gestational age"
  * text = "Gestational age"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 12 'wk' "Week"


Instance: ObsAncResult
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจ ANC"
Description: "ผลการตรวจ ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#313199003 "Antenatal screening finding"
  * text = "Antenatal screening finding"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: ObsAncWeight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: น้ำหนัก ANC"
Description: "น้ำหนัก ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#29463-7 "Body weight"
  * text = "Body weight"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 80 'kg' "kg"


Instance: ObsAncHeight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ส่วนสูง ANC"
Description: "ส่วนสูง ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 160 'cm' "cm"


Instance: ObsAncThal
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ตรวจธาลาสซีเมียในครรภ์หรือไม่"
Description: "ตรวจธาลาสซีเมียในครรภ์หรือไม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $SCT#252290000 "Thalassemia screening"
  * text = "Thalassemia screening"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"


Instance: ObsAncUrineSugar
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระดับน้ำตาลในปัสสาวะ"
Description: "ระดับน้ำตาลในปัสสาวะ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#5792-7 "Glucose [Mass/volume] in Urine by Test strip"
  * text = "Glucose [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#NEG "Negative"


Instance: ObsAncUrineProtein
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระดับโปรตีนในปัสสาวะ"
Description: "ระดับโปรตีนในปัสสาวะ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#5804-0 "Protein [Mass/volume] in Urine by Test strip"
  * text = "Protein [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#NEG "Negative"


Instance: ObsAncNipple
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สภาพหัวนม"
Description: "สภาพหัวนม"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#364376001 "Nipple observable"
  * text = "Nipple observable"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"
  * text = "สภาพหัวนมปกติ"



Instance: ObsAncHeadache
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาการปวดศรีษะ"
Description: "อาการปวดศรีษะ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#45715-0 "Headache [Minimum Data Set]"
  * text = "Headache [Minimum Data Set]"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีอาการปวดศีรษะ"


Instance: ObsAncNausea
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาการคลื่นใส้"
Description: "อาการคลื่นใส้"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#81660-3 "Nausea [Presence]"
  * text = "Nausea [Presence]"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีอาการคลื่นไส้"


Instance: ObsAncThyroid
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สภาพต่อมไทรอยด์"
Description: "สภาพต่อมไทรอยด์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#32479-8 "Physical findings of Thyroid"
  * text = "Physical findings of Thyroid"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: ObsAncFetalMovement
InstanceOf: Observation
Title: "ตัวอย่าง Observation: เด็กดิ้นหรือไม่"
Description: "เด็กดิ้นหรือไม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#56834-5 "Fetal Narrative Movement"
  * text = "Fetal Narrative Movement"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ดิ้นดี"


Instance: ObsAncDischarge
InstanceOf: Observation
Title: "ตัวอย่าง Observation: พบตกขาวหรือไม่"
Description: "พบตกขาวหรือไม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#271939006 "Vaginal discharge"
  * text = "Vaginal discharge"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่พบการตกขาว"


Instance: ObsAncEdema
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาการบวมของแม่"
Description: "อาการบวมของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#45700-2 "Edema [Minimum Data Set]"
  * text = "Edema [Minimum Data Set]"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "บวมเล็กน้อย 1+"



Instance: ObsAncVaginalBleed
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาการเลือดออกในช่องคลอด"
Description: "อาการเลือดออกในช่องคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#289530006 "Bleeding from vagina"
  * text = "Bleeding from vagina"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีเลือดไหล"


Instance: ObsAncCramp
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาการตะคริวของแม่"
Description: "อาการตะคริวของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#449918009 "Cramp in lower leg"
  * text = "Cramp in lower leg"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: ObsAncKUB
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระบบปัสสาวะของแม่"
Description: "ระบบปัสสาวะของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8700-7 "Physical findings of Genitourinary tract"
  * text = "Complaint"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: ObsAncHeart
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาการโรคหัวใจของแม่"
Description: "อาการโรคหัวใจของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8702-3 "Physical findings of Heart"
  * text = "Physical findings of Heart"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: ObsAncFundalHeight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระดับมดลูก"
Description: "ระดับมดลูก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11881-0 "Uterus Fundal height Tape measure"
  * text = "Uterus Fundal height Tape measure"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 20 'cm' "cm"


Instance: ObsAncFetusPosition
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ท่าเด็ก"
Description: "ท่าเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#72155-5 "Position in womb Fetus [RHEA]"
  * text = "Position in womb Fetus [RHEA]"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ROA"


Instance: ObsAncFetalPresentation
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ส่วนนำ"
Description: "ส่วนนำ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11876-0 "Fetal presentation palpation"
  * text = "Fetal presentation palpation"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "Head"


Instance: ObsAncFetalHeartSound
InstanceOf: Observation
Title: "ตัวอย่าง Observation: เสียงหัวใจเด็ก"
Description: "เสียงหัวใจเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#364623000 "Feature of fetal heart sounds"
  * text = "Feature of fetal heart sounds"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: ObsAncFetalHeartRate
InstanceOf: Observation
Title: "ตัวอย่าง Observation: จำนวนครั้งการเต้นของหัวใจเด็ก"
Description: "จำนวนครั้งการเต้นของหัวใจเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#55283-6 "Fetal Heart rate"
  * text = "Fetal Heart rate"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 150 '/min' "/min"


Instance: ObsAncBMI
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผล BMI (คำนวณจากอายุครรภ์)"
Description: "ผล BMI (คำนวณจากอายุครรภ์)"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#39156-5 "Body mass index (BMI) [Ratio]"
  * text = "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 25 'kg/m2' "kg/m2"


// Labor

Instance: ObsLaborGravida
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ครรภ์ที่ - Labor"
Description: "ครรภ์ที่ - Labor"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 2


Instance: ObsLaborLMP
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
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-03-01"



Instance: ObsLaborEDC
InstanceOf: Observation
Title: "ตัวอย่าง Observation: TEMP"
Description: "TEMP"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#93857-1 "Date and time of obstetric delivery"
  * text = "Date and time of obstetric delivery"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-12-01"


Instance: ObsLaborDateTime
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันคลอด / วันสิ้นสุดการตั้งครรภ์"
Description: "วันคลอด / วันสิ้นสุดการตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#21112-8 "Birth date"
  * text = "Birth date"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-12-01T12:30:02+07:00"


Instance: ObsLaborLiveBirth
InstanceOf: Observation
Title: "ตัวอย่าง Observation: จำนวนเกิดมีชีพ"
Description: "จำนวนเกิดมีชีพ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11636-8 "[#] Births.live"
  * text = "[#] Births.live"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 1


Instance: ObsLaborStillborn
InstanceOf: Observation
Title: "ตัวอย่าง Observation: จำนวนตายคลอด"
Description: "จำนวนตายคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#57062-2 "[#] Births.stillborn"
  * text = "[#] Births.stillborn"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0





// Post-natal


Instance: ObsPostnatalGravida
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การตั้งครรภ์ครั้งที่"
Description: "การตั้งครรภ์ครั้งที่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 2


Instance: ObsPostnatalBirthDate
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันเดือนปีที่คลอด / วันสิ้นสุดการตั้งครรภ์"
Description: "วันเดือนปีที่คลอด / วันสิ้นสุดการตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#21112-8 "Birth date"
  * text = "Birth date"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-12-01T12:30:02+07:00"


Instance: ObsPostnatalFundalHeight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระดับมดลูก Postnatal"
Description: "ระดับมดลูก Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11881-0 "Uterus Fundal height Tape measure"
  * text = "Uterus Fundal height Tape measure"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueQuantity = 12 'cm' "cm"


Instance: ObsPostnatalLochia
InstanceOf: Observation
Title: "ตัวอย่าง Observation: น้ำคาวปลา Postnatal"
Description: "น้ำคาวปลา Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#289576005 "Lochia present"
  * text = "Lochia present"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: ObsPostnatalnipple
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สภาพหัวนม Postnatal"
Description: "สภาพหัวนม Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#364376001 "Nipple observable"
  * text = "Nipple observable"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: ObsPostnatalBreastfeeding
InstanceOf: Observation
Title: "ตัวอย่าง Observation: น้ำนม Postnatal"
Description: "น้ำนม Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#63895-7 "Breastfeeding status"
  * text = "Breastfeeding status"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_PostnatalBreastfeeding#1 "ไหล"


Instance: ObsPostnatalMens
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ประจำเดือน Postnatal"
Description: "ประจำเดือน Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#3146-8 "Menstrual status"
  * text = "TEMP"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_PostnatalMens#1 "ปกติ"


Instance: ObsPostnatalUrineProtein
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การตรวจโปรตีนทางปัสสาวะ Postnatal"
Description: "การตรวจโปรตีนทางปัสสาวะ Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#5804-0 "Protein [Mass/volume] in Urine by Test strip"
  * text = "Protein [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0


Instance: ObsPostnatalUrineSugar
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การตรวจน้ำตาลทางปัสสาวะ Postnatal"
Description: "การตรวจน้ำตาลทางปัสสาวะ Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#5792-7 "Glucose [Mass/volume] in Urine by Test strip"
  * text = "Glucose [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0


Instance: ObsPostnatalPerineum
InstanceOf: Observation
Title: "ตัวอย่าง Observation: TEMP"
Description: "TEMP"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#364297003 "Female perineum observable"
  * text = "Female perineum observable"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_PostnatalPerineum#1 "ปกติ"


Instance: ObsPostnatalStatus
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจมารดาหลังคลอด"
Description: "ผลการตรวจมารดาหลังคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#304598004 "Postnatal examination finding"
  * text = "Postnatal examination finding"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"



