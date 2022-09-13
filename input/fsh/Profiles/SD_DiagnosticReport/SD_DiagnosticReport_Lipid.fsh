Profile: Moph43pDiagnosticReportLipid
Parent: $SD_DiagnosticReport_Base
Id: moph43p-diagnosticreport-lipid
Title: "MoPH43p DiagnosticReport: Lipid"
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
* code.coding[loinc] = $LNC#57698-3 (exactly)
* code.coding[tmlt] = $CS_TMLT#320259 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* issued MS
* performer only Reference($SD_Organization_Provider)
* performer MS
* specimen 1.. MS
* specimen only Reference($SD_Specimen_Base)
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