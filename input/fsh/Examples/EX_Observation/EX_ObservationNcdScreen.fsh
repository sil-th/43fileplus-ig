Instance: observation-ncd-vitalpanel1
InstanceOf: $SD_Observation_VitalPanel
Title: "ตัวอย่าง Observation: Vital Signs Panel - NCD"
Description: "รวมการตรวจสัญญาณชีพทั้งหมด - NCD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
  * text = "การตรวจสัญญาณชีพ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* hasMember[0] = Reference(Observation/observation-ncd-wt1)
* hasMember[+] = Reference(Observation/observation-ncd-ht1)
* hasMember[+] = Reference(Observation/observation-ncd-bp1)
* hasMember[+] = Reference(Observation/observation-ncd-bp2)
* hasMember[+] = Reference(Observation/observation-ncd-wc1)



Instance: observation-ncd-wt1
InstanceOf: $SD_Observation_VitalBw
Title: "ตัวอย่าง Observation: น้ำหนักผู้ป่วยแรกรับ - NCD"
Description: "Body weight - NCD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#29463-7 "Body weight"
  * text = "Body weight"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueQuantity
  * value = 80
  * unit = "kg"
  * system = $UCUM
  * code = #kg


Instance: observation-ncd-ht1
InstanceOf: $SD_Observation_VitalHt
Title: "ตัวอย่าง Observation: ส่วนสูงผู้ป่วยแรกรับ - NCD"
Description: "Body height - NCD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueQuantity
  * value = 170
  * unit = "cm"
  * system = $UCUM
  * code = #cm


Instance: observation-ncd-bp1
InstanceOf: $SD_Observation_VitalBp
Title: "ตัวอย่าง Observation: ความดันโลหิต ซิสโตลิก แรกรับครั้งที่ 1 - NCD"
Description: "Blood pressure panel with all children optional - NCD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#85354-9 "Blood pressure panel with all children optional"
  * text = "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* interpretation
  * coding[0] = $CS_HL7_ObsInterpret#N "Normal"
  * text = "Normal"
* component[SBP]
  * code
    * coding[0] = $LNC#8480-6 "Systolic blood pressure"
    * text = "Systolic blood pressure"
  * valueQuantity
    * value = 150
    * unit = "mm[Hg]"
    * system = $UCUM
    * code = #mm[Hg]
* component[DBP]
  * code
    * coding[0] = $LNC#8462-4 "Diastolic blood pressure"
    * text = "Diastolic blood pressure"
  * valueQuantity
    * value = 100
    * unit = "mm[Hg]"
    * system = $UCUM
    * code = #mm[Hg]



Instance: observation-ncd-bp2
InstanceOf: $SD_Observation_VitalBp
Title: "ตัวอย่าง Observation: ความดันโลหิต ซิสโตลิก แรกรับครั้งที่ 2 - NCD"
Description: "Blood pressure panel with all children optional - NCD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#85354-9 "Blood pressure panel with all children optional"
  * text = "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* component[SBP]
  * code
    * coding[0] = $LNC#8480-6 "Systolic blood pressure"
    * text = "Systolic blood pressure"
  * valueQuantity
    * value = 120
    * unit = "mm[Hg]"
    * system = $UCUM
    * code = #mm[Hg]
* component[DBP]
  * code
    * coding[0] = $LNC#8462-4 "Diastolic blood pressure"
    * text = "Diastolic blood pressure"
  * valueQuantity
    * value = 80
    * unit = "mm[Hg]"
    * system = $UCUM
    * code = #mm[Hg]


Instance: observation-ncd-wc1
InstanceOf: $SD_Observation_VitalWc
Title: "ตัวอย่าง Observation: รอบเอว - NCD"
Description: "Waist Circumference at umbilicus by Tape measure - NCD"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#8280-0 "Waist Circumference at umbilicus by Tape measure"
  * text = "Waist Circumference at umbilicus by Tape measure"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueQuantity
  * value = 80
  * unit = "cm"
  * system = $UCUM
  * code = #cm
* interpretation
  * coding[0] = $CS_HL7_ObsInterpret#N "Normal"
  * text = "Normal"


// Social History

Instance: observation-ncd-smoking1
InstanceOf: $SD_Observation_SocialSmoking
Title: "ตัวอย่าง Observation: ประวัติสูบบุหรี่"
Description: "ประวัติสูบบุหรี่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[code43Plus] = $LNC#72166-2 "Tobacco smoking status"
  * text = "Tobacco smoking status"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdSmoking#1 "ไม่สูบ"



Instance: observation-ncd-alcohol1
InstanceOf: $SD_Observation_SocialAlcohol
Title: "ตัวอย่าง Observation: ประวัติดื่มเครื่องดื่มแอลกอฮอลล์"
Description: "ประวัติดื่มเครื่องดื่มแอลกอฮอลล์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[code43Plus] = $LNC#74013-4 "Alcoholic drinks per day"
  * text = "Alcoholic drinks per day"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdAlcohol#2 "ดื่มนานๆครั้ง (ดื่ม 1-3 วัน/เดือน หรือ ดื่ม 1-11 วัน/ปี)"


Instance: observation-ncd-dm-fam1
InstanceOf: $SD_Observation_NcdFamDM
Title: "ตัวอย่าง Observation: ประวัติเบาหวานในญาติสายตรง"
Description: "ประวัติเบาหวานในญาติสายตรง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[code43Plus] = $LNC#97063-2 "Family history of Diabetes"
  * text = "Family history of Diabetes"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"


Instance: observation-ncd-ht-fam1
InstanceOf: $SD_Observation_NcdFamHT
Title: "ตัวอย่าง Observation: ประวัติความดันสูงในญาติสายตรง"
Description: "ประวัติความดันสูงในญาติสายตรง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[code43Plus] = $SCT#160357008 "Family history of hypertension"
  * text = "Family history of hypertension"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"




// FBS and method

Instance: observation-ncd-fbs
InstanceOf: $SD_Observation_LabFbs
Title: "ตัวอย่าง Observation: การตรวจระดับน้ำตาลในเลือด"
Description: "การตรวจระดับน้ำตาลในเลือด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[loinc] = $LNC#1558-6 "Fasting glucose [Mass/volume] in Serum or Plasma"
  * coding[tmlt] = $CS_TMLT#320291 "Fasting glucose [mg/dL] in Serum or Plasma"
  * text = "Fasting glucose [mg/dL] in Serum or Plasma"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* interpretation
  * coding[0] = $CS_HL7_ObsInterpret#N "Normal"
  * text = "Normal"
* valueQuantity = 140 'mg/dL' "mg/dL"
* method = $CS_THCC_NcdFbsMethod#2 "ตรวจน้ำตาลในเลือด จากหลอดเลือดดำ โดยไม่อดอาหาร"



Instance: observation-ncd-hi-glucose1
InstanceOf: $SD_Observation_NcdGlucoseHx
Title: "ตัวอย่าง Observation: มีประวัติน้ำตาลในเลือดสูง"
Description: "มีประวัติน้ำตาลในเลือดสูง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_MiscObsType#001 "การมีประวัติน้ำตาลในเลือดสูง"
  * text = "มีประวัติน้ำตาลในเลือดสูง"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"



Instance: observation-ncd-dyslipid1
InstanceOf: $SD_Observation_NcdDyslipidHx
Title: "ตัวอย่าง Observation: มีประวัติไขมันในเลือดสูง"
Description: "มีประวัติไขมันในเลือดสูง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#161450003 "History of raised blood lipids"
  * text = "History of raised blood lipids"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"



Instance: observation-ncd-gest-dm1
InstanceOf: $SD_Observation_NcdGestDMHx
Title: "ตัวอย่าง Observation: มีประวัติเป็นเบาหวานขณะตั้งครรภ์"
Description: "มีประวัติเป็นเบาหวานขณะตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#472971004 "History of gestational diabetes mellitus"
  * text = "History of gestational diabetes mellitus"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"



Instance: observation-ncd-foot1
InstanceOf: $SD_Observation_NcdFoot
Title: "ตัวอย่าง Observation: การตรวจเท้า"
Description: "การตรวจเท้า"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#394683006 "Diabetic foot risk assessment"
  * text = "Diabetic foot risk assessment"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdFootExam#1 "ตรวจ ผลปกติ"


Instance: observation-ncd-retina1
InstanceOf: $SD_Observation_NcdRetina
Title: "ตัวอย่าง Observation: การตรวจจอประสาทตา"
Description: "การตรวจจอประสาทตา"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#134395001 "Diabetic retinopathy screening"
  * text = "Diabetic retinopathy screening"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdRetinaExam#1 "ตรวจ opthalmoscope ผลปกติ"
