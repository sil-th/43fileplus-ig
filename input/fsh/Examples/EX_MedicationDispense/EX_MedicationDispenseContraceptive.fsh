Instance: medicationdispense-contraception1
InstanceOf: $SD_MedicationDispense_Contraceptive
Title: "ตัวอย่าง MedicationDispense: การจ่ายยาเม็ดคุมกำเนิดในการรับบริการวางแผนครอบครัว"
Description: "แสดงการจ่ายยาเม็ดคุมกำเนิดในการรับบริการวางแผนครอบครัว"
Usage: #example
* status = #completed
* medicationCodeableConcept = $CS_THCC_ContraceptiveMethod#1 "ยาเม็ดคุมกำเนิด"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* quantity
  * value = 21
  * unit = "Capsule"
  * system = $SCT
  * code = #732937005
* daysSupply = 7 'd' "Day"
* whenHandedOver = "2021-01-21T12:30:02+07:00"