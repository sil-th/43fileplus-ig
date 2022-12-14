Profile: MophPcDiagnosticReportLipid
Parent: $SD_DiagnosticReport_Base
Id: mophpc-diagnosticreport-lipid
Title: "MoPH-PC DiagnosticReport: Lipid"
Description: "ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
* ^url = $SD_DiagnosticReport_Lipid
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#57698-3
* code.coding[tmlt] = $CS_TMLT#320259
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result contains
    Cholesterol 0..1 and
    Triglyceride 0..1 and
    HDL 0..1 and
    LDL 0..1
* result[Cholesterol] only Reference($SD_Observation_LabChol)
* result[Triglyceride] only Reference($SD_Observation_LabTg)
* result[HDL] only Reference($SD_Observation_LabHdl)
* result[LDL] only Reference($SD_Observation_LabLdl)