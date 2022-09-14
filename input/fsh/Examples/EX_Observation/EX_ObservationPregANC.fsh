Instance: observation-anc-gravida
InstanceOf: $SD_Observation_PregGravida
Title: "ตัวอย่าง Observation: ครรภ์ที่"
Description: "ครรภ์ที่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueInteger = 2


Instance: observation-anc-period
InstanceOf: $SD_Observation_PregAncPeriod
Title: "ตัวอย่าง Observation: ช่วงของการ ANC"
Description: "ช่วงของการ ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_MiscPregnancyObs#ancperiod 
  * text = "ช่วงของการ ANC ตามโครงสร้างข้อมูล 43 แฟ้ม แฟ้ม ANC"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueInteger = 1


Instance: observation-anc-ga
InstanceOf: $SD_Observation_PregGA
Title: "ตัวอย่าง Observation: อายุครรภ์ (GA) ANC"
Description: "อายุครรภ์ (GA) ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#57714-8 "Obstetric estimation of gestational age"
  * text = "Obstetric estimation of gestational age"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 12 'wk' "Week"


Instance: observation-anc-result
InstanceOf: $SD_Observation_PregAncResult
Title: "ตัวอย่าง Observation: ผลการตรวจ ANC"
Description: "ผลการตรวจ ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#313199003 "Antenatal screening finding"
  * text = "Antenatal screening finding"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: observation-anc-weight
InstanceOf: $SD_Observation_VitalBw
Title: "ตัวอย่าง Observation: น้ำหนัก ANC"
Description: "น้ำหนัก ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#29463-7 "Body weight"
  * text = "Body weight"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 80 'kg' "kg"


Instance: observation-anc-height
InstanceOf: $SD_Observation_VitalHt
Title: "ตัวอย่าง Observation: ส่วนสูง ANC"
Description: "ส่วนสูง ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 160 'cm' "cm"



Instance: observation-anc-dental-caries
InstanceOf: $SD_Observation_PhysicalDentalCaries
Title: "ตัวอย่าง Observation: จำนวนฟันผุ"
Description: "จำนวนฟันผุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#80967001 "Dental caries"
  * text = "จำนวนฟันผุ (ซี่)"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueInteger = 1



Instance: observation-anc-gingivitis
InstanceOf: $SD_Observation_PregGingivitis
Title: "ตัวอย่าง Observation: การมีภาวะเหงือกอักเสบ ANC"
Description: "การมีภาวะเหงือกอักเสบ ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#66383009 "Gingivitis"
  * text = "สภาพเหงือก"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"


Instance: observation-anc-dental-plaque
InstanceOf: $SD_Observation_PregDentalPlaque
Title: "ตัวอย่าง Observation: การพบหินปูน ANC"
Description: "การพบหินปูน ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#34016-6 "Dental plaque {Probe site}"
  * text = "Dental plaque {Probe site}"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"


Instance: observation-anc-oral-exam
InstanceOf: $SD_Observation_PhysicalOral
Title: "ตัวอย่าง Observation: สถานะการตรวจสุขภาพปาก/ฟัน ANC"
Description: "สถานะการตรวจสุขภาพปาก/ฟัน ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#122856003 "Oral examination"
  * text = "Oral examination"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"


Instance: observation-anc-thal
InstanceOf: $SD_Observation_LabThal
Title: "ตัวอย่าง Observation: ตรวจธาลาสซีเมียในครรภ์หรือไม่"
Description: "ตรวจธาลาสซีเมียในครรภ์หรือไม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[snomed] = $SCT#252290000 "Thalassemia screening"
  * text = "Thalassemia screening"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_Meta_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"


Instance: observation-anc-urine-sugar
InstanceOf: $SD_Observation_LabGlucoseStrip
Title: "ตัวอย่าง Observation: ระดับน้ำตาลในปัสสาวะ"
Description: "ระดับน้ำตาลในปัสสาวะ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[loinc] = $LNC#5792-7 "Glucose [Mass/volume] in Urine by Test strip"
  * text = "Glucose [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#NEG "Negative"


Instance: observation-anc-urine-protein
InstanceOf: $SD_Observation_LabProteinStrip
Title: "ตัวอย่าง Observation: ระดับโปรตีนในปัสสาวะ"
Description: "ระดับโปรตีนในปัสสาวะ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[loinc] = $LNC#5804-0 "Protein [Mass/volume] in Urine by Test strip"
  * text = "Protein [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#NEG "Negative"


Instance: observation-anc-nipple
InstanceOf: $SD_Observation_PhysicalNipple
Title: "ตัวอย่าง Observation: สภาพหัวนม"
Description: "สภาพหัวนม"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#364376001 "Nipple observable"
  * text = "Nipple observable"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"
  * text = "สภาพหัวนมปกติ"



Instance: observation-anc-headache
InstanceOf: $SD_Observation_PregHeadache
Title: "ตัวอย่าง Observation: อาการปวดศรีษะ"
Description: "อาการปวดศรีษะ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#45715-0 "Headache [Minimum Data Set]"
  * text = "Headache [Minimum Data Set]"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีอาการปวดศีรษะ"


Instance: observation-anc-nausea
InstanceOf: $SD_Observation_PregNausea
Title: "ตัวอย่าง Observation: อาการคลื่นใส้"
Description: "อาการคลื่นใส้"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#81660-3 "Nausea [Presence]"
  * text = "Nausea [Presence]"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีอาการคลื่นไส้"


Instance: observation-anc-thyroid
InstanceOf: $SD_Observation_PhysicalThyroid
Title: "ตัวอย่าง Observation: สภาพต่อมไทรอยด์"
Description: "สภาพต่อมไทรอยด์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#32479-8 "Physical findings of Thyroid"
  * text = "Physical findings of Thyroid"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-fetal-movement
InstanceOf: $SD_Observation_PregFetalMovement
Title: "ตัวอย่าง Observation: เด็กดิ้นหรือไม่"
Description: "เด็กดิ้นหรือไม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#56834-5 "Fetal Narrative Movement"
  * text = "Fetal Narrative Movement"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ดิ้นดี"


Instance: observation-anc-discharge
InstanceOf: $SD_Observation_PregVgDischarge
Title: "ตัวอย่าง Observation: พบตกขาวหรือไม่"
Description: "พบตกขาวหรือไม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#271939006 "Vaginal discharge"
  * text = "Vaginal discharge"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่พบการตกขาว"


Instance: observation-anc-edema
InstanceOf: $SD_Observation_PregEdema
Title: "ตัวอย่าง Observation: อาการบวมของแม่"
Description: "อาการบวมของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#45700-2 "Edema [Minimum Data Set]"
  * text = "Edema [Minimum Data Set]"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "บวมเล็กน้อย 1+"



Instance: observation-anc-vaginal-bleed
InstanceOf: $SD_Observation_PregVgBleed
Title: "ตัวอย่าง Observation: อาการเลือดออกในช่องคลอด"
Description: "อาการเลือดออกในช่องคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#289530006 "Bleeding from vagina"
  * text = "Bleeding from vagina"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีเลือดไหล"


Instance: observation-anc-cramp
InstanceOf: $SD_Observation_PregCramp
Title: "ตัวอย่าง Observation: อาการตะคริวของแม่"
Description: "อาการตะคริวของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#449918009 "Cramp in lower leg"
  * text = "Cramp in lower leg"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-kub
InstanceOf: $SD_Observation_PhysicalKub
Title: "ตัวอย่าง Observation: ระบบปัสสาวะของแม่"
Description: "ระบบปัสสาวะของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8700-7 "Physical findings of Genitourinary tract"
  * text = "Complaint"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-heart
InstanceOf: $SD_Observation_PhysicalHeart
Title: "ตัวอย่าง Observation: อาการโรคหัวใจของแม่"
Description: "อาการโรคหัวใจของแม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8702-3 "Physical findings of Heart"
  * text = "Physical findings of Heart"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-fundal-height
InstanceOf: $SD_Observation_PregFundalHeight
Title: "ตัวอย่าง Observation: ระดับมดลูก"
Description: "ระดับมดลูก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#11881-0 "Uterus Fundal height Tape measure"
  * text = "Uterus Fundal height Tape measure"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 20 'cm' "cm"


Instance: observation-anc-fetus-position
InstanceOf: $SD_Observation_PregFetusPosition
Title: "ตัวอย่าง Observation: ท่าเด็ก"
Description: "ท่าเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#72155-5 "Position in womb Fetus [RHEA]"
  * text = "Position in womb Fetus [RHEA]"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ROA"


Instance: observation-anc-fetal-presentation
InstanceOf: $SD_Observation_PregFetalPresentation
Title: "ตัวอย่าง Observation: ส่วนนำ"
Description: "ส่วนนำ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#11876-0 "Fetal presentation palpation"
  * text = "Fetal presentation palpation"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "Head"


Instance: observation-anc-fetal-heart-sound
InstanceOf: $SD_Observation_PregFetalHeartSound
Title: "ตัวอย่าง Observation: เสียงหัวใจเด็ก"
Description: "เสียงหัวใจเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#364623000 "Feature of fetal heart sounds"
  * text = "Feature of fetal heart sounds"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-fetal-heart-rate
InstanceOf: $SD_Observation_PregFetalHeartRate
Title: "ตัวอย่าง Observation: จำนวนครั้งการเต้นของหัวใจเด็ก"
Description: "จำนวนครั้งการเต้นของหัวใจเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#55283-6 "Fetal Heart rate"
  * text = "Fetal Heart rate"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 150 '/min' "/min"


Instance: observation-anc-bmi
InstanceOf: $SD_Observation_VitalBmi
Title: "ตัวอย่าง Observation: ผล BMI (คำนวณจากอายุครรภ์)"
Description: "ผล BMI (คำนวณจากอายุครรภ์)"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#39156-5 "Body mass index (BMI) [Ratio]"
  * text = "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 25 'kg/m2' "kg/m2"