Profile: Moph43pAppointmentBase
Parent: Appointment
Id: moph43p-appointment-base
Title: "MoPH43p Appointment"
Description: "ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ"
* ^url = $SD_Appointment_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* status ^short = "สถานะการนัด (มองจากฝั่งต้นทางการนัด)"
* serviceCategory MS
* serviceCategory ^short = "บริการที่นัดรับ"
* serviceCategory from $VS_Std15_AppointServiceCategory (extensible)
* serviceType MS
* serviceType ^short = "ประเภทกิจกรรมที่นัด"
* serviceType from $VS_THCC_AppointServiceType (extensible)
* reasonCode MS
* reasonCode ^short = "รหัสโรคที่นัดมาตรวจ"
* reasonCode.coding ^slicing.discriminator.type = #value
* reasonCode.coding ^slicing.discriminator.path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    icd10 0..1 MS and
    snomed 0..1 MS
* reasonCode.coding[icd10] from $ICD10 (extensible)
* reasonCode.coding[icd10].system 1..
* reasonCode.coding[icd10].system = $ICD10 (exactly)
* reasonCode.coding[icd10].code 1..
* reasonCode.coding[snomed] from $SCT (extensible)
* reasonCode.coding[snomed].system 1..
* reasonCode.coding[snomed].system = $SCT (exactly)
* reasonCode.coding[snomed].code 1..
* description MS
* supportingInformation MS
* supportingInformation ^slicing.discriminator.type = #type
* supportingInformation ^slicing.discriminator.path = "$this"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains coverage 0..* MS
* supportingInformation[coverage] only Reference($SD_Coverage_Base)
* start MS
* start ^short = "วัน-เวลาที่นัดรับบริการ"
* patientInstruction MS
* patientInstruction ^short = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* patientInstruction ^definition = "การปฏิบัติตนของผู้ป่วยก่อนเข้ารับบริการ"
* comment MS
* comment ^short = "Note เพิ่มการเกี่ยวกับการนัด"
* comment ^definition = "รายละเอียดอื่น ๆ เพิ่มเติมเกี่ยวกับการนัด"
* participant MS
* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "$this"
* participant ^slicing.rules = #open
* participant contains
    patient 1..1 MS and
    practitioner 0..* MS and
    location 0..* MS
* participant[patient].actor only Reference($SD_Patient_Base)
* participant[practitioner] ^short = "ผู้ให้บริการ ที่นัดไปพบ"
* participant[practitioner].actor only Reference($SD_Practitioner_Base)
* participant[location] ^short = "ชื่อคลีนิค หรือห้องตรวจที่นัดรับบริการ"
* participant[location].actor only Reference($SD_Location_Department)