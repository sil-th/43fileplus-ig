Profile: Moph43pLocationDepartment
Parent: Location
Id: moph43p-location-department
Title: "MoPH43p Location: Department"
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
* identifier[dep].system ^example.label = "Department namespace"
* identifier[dep].system ^example.valueUri = $ID_LO_DepCode
* identifier[dep].value 1..
* name MS
* description MS
* managingOrganization only Reference($SD_Organization_Provider)
* managingOrganization MS

