Instance: location-opd-gp-clinic1
InstanceOf: Location
Title: "ตัวอย่าง Location: OPD GP Clinic 1"
Description: "ข้อมูลคลินิก OPD - GP 1"
Usage: #example
* identifier[0]
  * system = $ID_LO_DepCode
  * value = "OPDGP1"
* status = #active
* name = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* description = "คำบรรยายเพิ่มเติม (ถ้ามี)"
* managingOrganization = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")