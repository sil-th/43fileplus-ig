Alias: $SD_Appointment = https://fhir-ig.sil-th.org/43filesplus/StructureDefinition/moph43p-appointment

Profile: Moph43pAppointment
Parent: Appointment
Id: moph43p-appointment
Title: "MoPH43p Appointment"
Description: "ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ"
* ^url = $SD_Appointment
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* status ^short = "สถานะการนัด (มองจากฝั่งต้นทางการนัด)"
* serviceCategory MS
* serviceCategory ^short = "บริการที่นัดรับ"
* reasonCode MS
* reasonCode ^short = "รหัสโรคที่นัดมาตรวจ"
* reasonCode.coding ^slicing.discriminator.type = #value
* reasonCode.coding ^slicing.discriminator.path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    icd10 0..1 and
    snomed 0..1
* reasonCode.coding[icd10] ^sliceName = "icd10"
* reasonCode.coding[icd10] ^mustSupport = true
* reasonCode.coding[icd10].system 1..
* reasonCode.coding[icd10].system = $ICD10 (exactly)
* reasonCode.coding[icd10].code 1..
* reasonCode.coding[snomed] ^sliceName = "snomed"
* reasonCode.coding[snomed] ^mustSupport = true
* reasonCode.coding[snomed].system 1..
* reasonCode.coding[snomed].system = $SCT (exactly)
* reasonCode.coding[snomed].code 1..
* description MS
* supportingInformation MS
* supportingInformation ^slicing.discriminator.type = #type
* supportingInformation ^slicing.discriminator.path = "$this"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains coverage 0..* MS
* supportingInformation[coverage] only Reference($SD_Coverage)
* start MS
* start ^short = "วัน-เวลาที่นัดรับบริการ"
* patientInstruction MS
* patientInstruction ^short = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction ^definition = "รายละเอียดอื่น ๆ เพิ่มเติมเกี่ยวกับการนัด"
* patientInstruction MS
* patientInstruction ^short = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* patientInstruction ^definition = "การปฏิบัติตนของผู้ป่วยก่อนเข้ารับบริการ"
* participant MS
* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "$this"
* participant ^slicing.rules = #open
* participant contains
    patient 1..1 MS and
    practitioner 0..* MS and
    location 0..* MS
* participant[patient].actor only Reference($SD_Patient)
* participant[practitioner] ^short = "หมายเลขที่ผู้ให้บริการ ที่นัดไปพบ"
* participant[practitioner].actor only Reference($SD_Practitioner)
* participant[location] ^short = "ชื่อคลีนิคที่นัดรับบริการ"
* participant[location].actor only Reference($SD_Location_Department)