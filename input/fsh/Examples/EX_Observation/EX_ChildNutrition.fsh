Instance: observation-child-nutrition-weight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: น้ำหนักเด็ก - Nutrition"
Description: "น้ำหนักเด็ก - Nutrition"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#29463-7 "Body weight"
  * text = "Body weight"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueQuantity = 10 'kg' "kg"



Instance: observation-child-nutrition-height
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ส่วนสูงเด็ก - Nutrition"
Description: "ส่วนสูงเด็ก - Nutrition"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueQuantity = 50 'cm' "cm"




Instance: observation-child-nutrition-headcircum
InstanceOf: Observation
Title: "ตัวอย่าง Observation: เส้นรอบศีรษะ - Nutrition"
Description: "เส้นรอบศีรษะ - Nutrition"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#9843-4 "Head Occipital-frontal circumference"
  * text = "Head Occipital-frontal circumference"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueQuantity = 40 'cm' "cm"




Instance: observation-child-nutrition-development
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระดับพัฒนาการเด็ก"
Description: "ระดับพัฒนาการเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#406207000 "Child development by age"
  * text = "Child development by age"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueCodeableConcept = $CS_THCC_ChildDevLevel#1 "ปกติ"


Instance: observation-child-nutrition-food
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาหารที่รับประทานปัจจุบัน"
Description: "อาหารที่รับประทานปัจจุบัน"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#226379006 "Food intake"
  * text = "Food intake"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueCodeableConcept = $CS_THCC_ChildFood#3	"นมแม่และนมผสม"


Instance: observation-child-nutrition-bottle
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การใช้ขวดนม"
Description: "การใช้ขวดนม"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#268472006 "Infant bottle fed"
  * text = "Infant bottle fed"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"


Instance: observation-child-nutrition-new-teeth
InstanceOf: Observation
Title: "ตัวอย่าง Observation: จำนวนฟันขึ้นใหม่ (ซี่)"
Description: "จำนวนฟันขึ้นใหม่ (ซี่)"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * text = "จำนวนฟันขึ้นใหม่ (ซี่)"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueQuantity = 2 '{#}' "Number"



Instance: observation-child-nutrition-caries-teeth
InstanceOf: Observation
Title: "ตัวอย่าง Observation: จำนวนฟันผุ (ซี่)"
Description: "จำนวนฟันผุ (ซี่)"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * text = "จำนวนฟันผุ (ซี่)"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueQuantity = 0 '{#}' "Number"



Instance: observation-child-nutrition-umbilical-hygiene
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ความสะอาดของสะดือ"
Description: "ความสะอาดของสะดือ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#364594006 "Umbilical stump observable"
  * text = "Umbilical stump observable"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueString = "สะอาดดี (รอรหัส)"


Instance: observation-child-nutrition-ht-for-wt
InstanceOf: Observation
Title: "ตัวอย่าง Observation: Height for age"
Description: "Height for age"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#1153605006 "Body height for age percentile"
  * text = "Body height for age percentile"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueString = "WNL (รอรหัส)"



Instance: observation-child-nutrition-wt-for-age
InstanceOf: Observation
Title: "ตัวอย่าง Observation: Weight for age"
Description: "Weight for age"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#1153592008 "Weight for age percentile"
  * text = "Weight for age percentile"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueString = "WNL (รอรหัส)"



Instance: observation-child-nutrition-wt-for-ht
InstanceOf: Observation
Title: "ตัวอย่าง Observation: Weight for height"
Description: "Weight for height"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#1153601002 "Weight for height percentile"
  * text = "Weight for height percentile"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueString = "WNL (รอรหัส)"




Instance: observation-child-nutrition-remark
InstanceOf: Observation
Title: "ตัวอย่าง Observation: หมายเหตุเพิ่มเติม"
Description: "หมายเหตุเพิ่มเติม"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#34109-9 "Note"
  * text = "Note"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-02-21T15:00:02+07:00"
* valueString = "WNL"
