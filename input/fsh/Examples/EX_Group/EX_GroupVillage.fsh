Instance: group-patient-village1
InstanceOf: $SD_Group_Village
Title: "ตัวอย่าง Group: กลุ่มประชากรที่อาศัยอยู่ในหมู่บ้านที่ 1"
Description: "แสดงกลุ่มประชากรที่อาศัยอยู่ในหมู่บ้านที่ 1"
Usage: #example
* type = #person
* actual = false
* name = "ประชากรในหมู่บ้านสุขใจ แสนสุข"
* characteristic
  * code
    * coding[snomed] = $SCT#31879006 "Lives in a community (finding)"
    * text = "เป็นผู้อยู่อาศัยในหมู่บ้าน"
  * valueReference = Reference(Location/location-village1) "หมู่บ้านสุขใจ แสนสุข"
* characteristic.exclude = false