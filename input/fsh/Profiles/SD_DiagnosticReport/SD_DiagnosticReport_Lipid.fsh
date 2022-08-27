Profile: Moph43pDiagnosticReportLipid
Parent: DiagnosticReport
Id: moph43p-diagnosticreport-lipid
Title: "DiagnosticReport (MoPH43p)"
Description: "ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
* ^url = $SD_DiagnosticReport_Lipid
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* code MS
* code.coding 1..
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 and
    tmlt 0..1 MS
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[loinc].code = #57698-3 (exactly)
* code.coding[tmlt] ^sliceName = "tmlt"
* code.coding[tmlt].system 1..
* code.coding[tmlt].system = $CS_TMLT (exactly)
* code.coding[tmlt].code 1..
* code.coding[tmlt].code = #320259 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* issued MS
* performer only Reference($SD_Organization_Provider)
* performer MS
* specimen 1.. MS
* specimen only Reference($SD_Specimen)
* result ^slicing.discriminator.type = #value
* result ^slicing.discriminator.path = "resolve().code"
* result ^slicing.rules = #open
* result contains
    Cholesterol 1..1 and
    Triglyceride 1..1 and
    HDL 1..1 and
    LDL 1..1
* result[Cholesterol] only Reference($SD_Observation_LabChol)
* result[Triglyceride] only Reference($SD_Observation_LabTg)
* result[HDL] only Reference($SD_Observation_LabHdl)
* result[LDL] only Reference($SD_Observation_LabLdl)