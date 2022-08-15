Instance: RiskBehavior1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: พฤติกรรมเสี่ยง"
Description: "ผลการบันทึกพฤติกรรมเสี่ยง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code = $CS_THCC_SocialObsType#risk-behavior "พฤติกรรมเสี่ยง"
  * text = "พฤติกรรมเสี่ยง"
* subject = Reference(Patient/Patient4)
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept
  * text = "ชอบทานอาหารหวาน"