Instance: observation-anc-gravida
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueInteger = 2


Instance: observation-anc-period
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ช่วงของการ ANC"
Description: "ช่วงของการ ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_Meta_MiscPregnancyObs#ancperiod 
  * text = "ช่วงของการ ANC ตามโครงสร้างข้อมูล 43 แฟ้ม แฟ้ม ANC"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueInteger = 1


Instance: observation-anc-ga
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อายุครรภ์ (GA) ANC"
Description: "อายุครรภ์ (GA) ANC"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#57714-8 "Obstetric estimation of gestational age"
  * text = "Obstetric estimation of gestational age"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 12 'wk' "Week"


Instance: observation-anc-result
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: observation-anc-weight
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 80 'kg' "kg"


Instance: observation-anc-height
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 160 'cm' "cm"


Instance: observation-anc-thal
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_Meta_ScreeningResult#1 "ปกติ"
  * text = "ปกติ"


Instance: observation-anc-urine-sugar
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#NEG "Negative"


Instance: observation-anc-urine-protein
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#NEG "Negative"


Instance: observation-anc-nipple
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"
  * text = "สภาพหัวนมปกติ"



Instance: observation-anc-headache
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีอาการปวดศีรษะ"


Instance: observation-anc-nausea
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีอาการคลื่นไส้"


Instance: observation-anc-thyroid
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-fetal-movement
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ดิ้นดี"


Instance: observation-anc-discharge
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่พบการตกขาว"


Instance: observation-anc-edema
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "บวมเล็กน้อย 1+"



Instance: observation-anc-vaginal-bleed
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ไม่มีเลือดไหล"


Instance: observation-anc-cramp
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-kub
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-heart
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-fundal-height
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 20 'cm' "cm"


Instance: observation-anc-fetus-position
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "ROA"


Instance: observation-anc-fetal-presentation
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "Head"


Instance: observation-anc-fetal-heart-sound
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueString = "WNL"


Instance: observation-anc-fetal-heart-rate
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 150 '/min' "/min"


Instance: observation-anc-bmi
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2021-04-21T12:30:02+07:00"
* valueQuantity = 25 'kg/m2' "kg/m2"