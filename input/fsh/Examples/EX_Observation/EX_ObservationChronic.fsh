Instance: observation-risk-behavior1
InstanceOf: $SD_Observation_SocialRiskBehavior
Title: "ตัวอย่าง Observation: พฤติกรรมเสี่ยง"
Description: "ผลการบันทึกพฤติกรรมเสี่ยง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code = $CS_Meta_SocialObsType#risk-behavior "พฤติกรรมเสี่ยง"
  * text = "พฤติกรรมเสี่ยง"
* subject = Reference(Patient/patient-patient4)
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept
  * text = "ชอบทานอาหารหวาน"