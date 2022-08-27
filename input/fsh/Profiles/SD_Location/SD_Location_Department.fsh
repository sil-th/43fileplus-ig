Alias: $SD_Location_Department = https://fhir-ig.sil-th.org/43filesplus/StructureDefinition/moph43p-location-department

Profile: Moph43pLocationDepartment
Parent: Location
Id: moph43p-location-department
Title: "Location - Department (MoPH43p)"
Description: "ข้อมูลคลินิก/หน่วยงาน ในสถานพยาบาล"
* ^url = $SD_Location_Department
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    dep 0..1 MS
* identifier[dep] ^short = "รหัสหน่วยงานในสถานพยาบาล"
* identifier[dep].system 1..
* identifier[dep].system obeys DEP-uri
* identifier[dep].system ^example.label = "DEP namespace"
* identifier[dep].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/DepCode"
* identifier[dep].value 1..
* name MS
* description MS
* managingOrganization only Reference($SD_Organization_Provider)
* managingOrganization MS

//Constraint
Invariant: DEP-uri
Description: "DEP identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/DepCode, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/DepCode)$')"