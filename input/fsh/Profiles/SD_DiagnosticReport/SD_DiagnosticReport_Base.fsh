Profile: Moph43pDiagnosticReportBase
Parent: DiagnosticReport
Id: moph43p-diagnosticreport-base
Title: "MoPH43p DiagnosticReport"
Description: "การรายงานผลการตรวจ"
* ^url = $SD_DiagnosticReport_Base
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
* code.coding[loinc] from $VS_LNC
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[tmlt] from $VS_TMLT
* code.coding[tmlt].system 1..
* code.coding[tmlt].system = $CS_TMLT (exactly)
* code.coding[tmlt].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* issued MS
* performer only Reference($SD_Organization_Provider)
* performer MS
* specimen 0.. MS
* specimen only Reference($SD_Specimen_Base)
* result MS