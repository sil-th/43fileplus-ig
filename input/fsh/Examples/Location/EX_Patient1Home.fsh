Instance: Patient1Home
InstanceOf: Location
Title: "ตัวอย่าง Location: บ้านของผู้ป่วยรายที่ 1"
Description: "แสดงข้อมูลรายละเอียดบ้านของผู้ป่วยรายที่ 1"
Usage: #example
* extension[+]
  * url = $EX_TH_HouseType
  * valueCodeableConcept = $CS_THCC_HouseType#3 "คอนโดมิเนียม"
* extension[+]
  * url = $EX_TH_HouseOwner
  * valueReference = Reference(Patient/Patient1)
* extension[+]
  * url = $EX_TH_ManagingPractitioner
  * valueReference = Reference(Practitioner/PractitionerVolunteer1) "นาง ใจดี ชอบช่วย"
* extension[+]
  * url = $EX_TH_HouseholdNum
  * valueInteger = 1
* extension[+]
  * url = $EX_TH_InMunicipality
  * valueCodeableConcept = $CS_THCC_InMunicipality#1 "ในเขตเทศบาล"
* identifier[0]
  * use = #official
  * system = $ID_DopaHouseNo
  * value = "XXXXXX"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #official
  * system = $ID_LO_House
  * value = "XXXXXX"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* status = #active
* name = "บ้านของนาย สมชาย ใจดี"
* description = "คำบรรยายเพิ่มเติม (ถ้ามี)"
* telecom[0]
  * system = #phone
  * value = "02-222-2222"
  * use = #home
* type = $CS_HL7_RoleCode#PTRES "Patient's Residence"
* address
  * extension[+]
    * url = $EX_TH_StructureLine
    * extension[0]
      * url = "number"
      * valueString = "123"
    * extension[+]
      * url = "building-village"
      * valueString = "คอนโดพัฒนานนท์"
    * extension[+]
      * url = "village-no"
      * valueString = "หมู่ที่ 20"
    * extension[+]
      * url = "road"
      * valueString = "ถนนนครอินทร์"
    * extension[+]
      * url = "lane"
      * valueString = "ซอยนครอินทร์ 20"
  * use = #home
  * text = "123 คอนโดพัฒนานนท์ หมู่ที่ 20 ถนนนครอินทร์ ซอยนครอินทร์ 20 ตำบลตลาดขวัญ อำเภอเมืองนนทบุรี จังหวัดนนทบุรี 11000"
  * line = "123 คอนโดพัฒนานนท์ หมู่ที่ 20 ถนนนครอินทร์ ซอยนครอินทร์ 20"
  * city = "ตลาดขวัญ"
  * district = "เมืองนนทบุรี"
  * state = "นนทบุรี"
  * postalCode = "11000"
* position
  * longitude = -133.03485
  * latitude = 78.31809