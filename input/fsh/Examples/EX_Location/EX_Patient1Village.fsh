Instance: location-village1
InstanceOf: Location
Title: "ตัวอย่าง Location: หมู่บ้านที่ 1"
Description: "แสดงข้อมูลหมู่บ้านที่ 1"
Usage: #example
* extension[0]
  * url = $EX_TH_LocationVillageArea
  * valueCodeableConcept = $CS_PCU_VillageArea#1 "เทศบาล"
* extension[+]
  * url = $EX_TH_LocationVillageMainHospital
  * valueReference = Reference(Organization/organization-main)
* extension[+]
  * url = $EX_TH_LocationVillageUnlistDate
  * valueDate = "2022-07-01"
* identifier[0]
  * use = #official
  * system = $ID_DopaVillageNo
  * value = "XXXXXX"
* status = #active
* name = "หมู่บ้านสุขใจ แสนสุข"
* description = "คำบรรยายเพิ่มเติม (ถ้ามี)"
* type = $SCT#224806006 "Village"
* address
  * extension[+]
    * url = $EX_TH_AddressStructuredLine
    * extension[0]
      * url = "villageNo"
      * valueString = "หมู่ที่ 20"
  * postalCode = "11000"
* position
  * longitude = -133.03485
  * latitude = 78.31809