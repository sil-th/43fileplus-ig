Profile: Moph43pObservationLab
Parent: Observation
Id: moph43p-observation-lab
Title: "Observation - Lab (MoPH43p)"
Description: "ข้อมูลการตรวจทางห้องปฏิบัติการ"
* ^url = $SD_Observation_Lab
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains Laboratory 1..1
* category[Laboratory].coding.system 1..
* category[Laboratory].coding.system = $CS_HL7_ObservationCat (exactly)
* category[Laboratory].coding.code 1..
* category[Laboratory].coding.code = #laboratory (exactly)
* code MS
* code ^short = "รหัสการตรวจทางห้องปฏิบัติการ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10 0..1 and
    loinc 0..1 MS and
    tmlt 0..1 MS and
    snomed 0..1 and
    2digit 0..1
* code.coding[icd10] ^short = "รหัสมาตรฐาน ICD10-TM (การตรวจทางห้องปฏิบัติการ)"
* code.coding[icd10].system 1..
* code.coding[icd10].system = $CS_ICD10TM_Lab (exactly)
* code.coding[icd10].code 1..
* code.coding[loinc] ^short = "รหัสมาตรฐาน LOINC"
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[tmlt] ^short = "รหัสมาตรฐาน TMLT"
* code.coding[tmlt].system 1..
* code.coding[tmlt].system = $CS_TMLT (exactly)
* code.coding[tmlt].code 1..
* code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED"
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* code.coding[2digit] ^short = "รหัสการตรวจทางห้องปฏิบัติการมาตรฐานเดิม 2 หลัก"
* code.coding[2digit].system 1..
* code.coding[2digit].system = $CS_THCC_2DigitLab (exactly)
* code.coding[2digit].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] MS
* value[x] ^short = "ผลของการตรวจทางห้องปฏิบัติการ"
* interpretation MS
* interpretation ^short = "การตีความจากผลการตรวจ"
* specimen only Reference($SD_Specimen)
* specimen MS
* specimen ^short = "สิ่งส่งตรวจ"
* referenceRange MS
* referenceRange ^short = "ช่วงค่าอ้างอิง"