Instance: OrganizationMain
InstanceOf: Organization
Title: "สถานพยาบาลหลักที่บันทึกข้อมูล"
Description: "Under construction"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 1"

Instance: OrganizationSecond
InstanceOf: Organization
Title: "สถานพยาบาลรองที่บันทึกข้อมูล"
Description: "Under construction"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 2"

Instance: OrganizationThird
InstanceOf: Organization
Title: "สถานพยาบาลรองที่บันทึกข้อมูล"
Description: "Under construction"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 3 โรงพยาบาลตติยภูมิ"

Instance: OrganizationFourth
InstanceOf: Organization
Title: "สถานพยาบาลรองที่บันทึกข้อมูล"
Description: "Under construction"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 4 สถานพยาบาลปฐมภูมิ"


Instance: OpdGPClinic1
InstanceOf: Location
Title: "OPD GP Clinic 1"
Description: "ข้อมูลคลินิก OPD - GP 1"
Usage: #example
* status = #active
* name = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* description = "คำบรรยายเพิ่มเติม (ถ้ามี)"
* partOf = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")


Instance: PractitionerDoctor1
InstanceOf: Practitioner
Title: "แพทย์ รายที่ 1"
Description: "ข้อมูลแพทย์รายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "พญ. สมหญิง จริงใจ"
  * family = "จริงใจ"
  * given = "สมหญิง"
  * prefix = "พญ."
* name[+]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #en
  * text = "Dr. Somying Jingjaid"
  * family = "Jingjai"
  * given = "Somying"
  * prefix = "Dr."
* gender = #female
* birthDate = "1960-04-25"
* qualification
  * identifier
    * use = #secondary
    * type = $CS_HL7_IdentifierType#MD "Medical License number"
    * system = $ID_ThaiDoctor
    * value = "23222"
  * code
    * coding[0] = $SCT#309343006 "Physician"
  * period
    * start = "1986-04-25"
  * issuer = Reference(Organization/OrganizationMedicalCouncil)
    * extension[0]
      * url = $EX_TH_QualificationIssuer
      * valueCodeableConcept
        * coding[0] = $CS_THCC_QualificationIssuer#01 "แพทยสภา"
        * text = "แพทยสภา"


Instance: PractitionerDoctor2
InstanceOf: Practitioner
Title: "แพทย์ รายที่ 2"
Description: "ข้อมูลแพทย์รายที่ 2"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650515222440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* active = true
* name[0]
  * text = "พญ. สมศรี จริงใจ"
  * family = "จริงใจ"
  * given = "สมศรี"
  * prefix = "พญ."
* gender = #female
* birthDate = "1970-04-25"
* qualification
  * identifier
    * use = #secondary
    * type = $CS_HL7_IdentifierType#MD "Medical License number"
    * system = $ID_ThaiDoctor
    * value = "34222"
  * code
    * coding[0] = $SCT#309343006 "Physician"
  * period
    * start = "1996-04-25"


Instance: PractitionerVolunteer1
InstanceOf: Practitioner
Title: "อสม. รายที่ 1"
Description: "ข้อมูลอสม. รายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง ใจดี ชอบช่วย"
  * family = "ชอบช่วย"
  * given = "ใจดี"
  * prefix = "นาง"


Instance: PractitionerRoleDoctor1
InstanceOf: PractitionerRole
Title: "บทบาทแพทย์ รายที่ 1"
Description: "บทบาทแพทย์ รายที่ 1 ในสถานพยาบาลหลัก"
Usage: #example
* extension[0]
  * url = $EX_TH_ProviderMove
  * extension[0]
    * url = "movefrom"
    * valueReference = Reference(Organization/OrganizationSecond) "โรงพยาบาลสำรอง"
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "2012-04-25"
      * end = "2015-01-01"
  * extension[+]
    * url = "moveto"
    * valueReference = Reference(Organization/OrganizationMain) "โรงพยาบาลตัวอย่าง"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#PN "Person number"
  * system = $ID_LO_Provider
  * value = "XXXXXXXX"
  * period
    * start = "2018-04-25"
* active = true
* period
  * start = "2015-01-01"
  * end = "2028-03-31"
* practitioner = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* organization = Reference(Organization/OrganizationMain) "โรงพยาบาลตัวอย่าง"
* code = $CS_THCC_IndProviderType#01 "แพทย์"
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #work
* telecom[+]
  * system = #email
  * value = "sonyingjingjai@jingjai.com"



Instance: OrganizationNHSO
InstanceOf: Organization
Title: "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
Description: "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* active = true
* type = $CS_HL7_OrgType#pay "Payer"
* name = "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* telecom[0]
  * system = #phone
  * value = "1330"
* telecom[+]
  * system = #phone
  * value = "021414000"
* telecom[+]
  * system = #fax
  * value = "021439730-1"
* telecom[+]
  * system = #url
  * value = "https://www.nhso.go.th"
* address
  * text = "เลขที่ 120 หมู่ 3 ชั้น 2-4 อาคารรวมหน่วยงานราชการ (อาคาร B) ศูนย์ราชการเฉลิมพระเกียรติ 80 พรรษา 5 ธันวาคม 2550 ถนนแจ้งวัฒนะ แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร ฯ 10210"
  * line = "เลขที่ 120 หมู่ 3 ชั้น 2-4 อาคารรวมหน่วยงานราชการ (อาคาร B) ศูนย์ราชการเฉลิมพระเกียรติ 80 พรรษา 5 ธันวาคม 2550 ถนนแจ้งวัฒนะ"
  * city = "ทุ่งสองห้อง"
  * district = "หลักสี่"
  * state = "กรุงเทพมหานคร"
  * postalCode = "10210"
  * country = "TH"


Instance: OrganizationSSO
InstanceOf: Organization
Title: "สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"
Description: "สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"
Usage: #example
* active = true
* type = $CS_HL7_OrgType#pay "Payer"
* name = "สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"
* telecom[0]
  * system = #phone
  * value = "1506"
* telecom[+]
  * system = #phone
  * value = "029562345"
* telecom[+]
  * system = #fax
  * value = "025260658"
* telecom[+]
  * system = #url
  * value = "https://www.sso.go.th"
* telecom[+]
  * system = #email
  * value = "info@sso1506.com"
* address
  * text = "เลขที่ 88/28 หมู่ 4 ถนนติวานนท์ ตำบลตลาดขวัญ อำเภอเมือง จังหวัดนนทบุรี รหัสไปรษณีย์ 11000"
  * line = "เลขที่ 88/28 หมู่ 4 ถนนติวานนท์"
  * city = "ตลาดขวัญ"
  * district = "เมืองนนทบุรี"
  * state = "นนทบุรี"
  * postalCode = "11000"
  * country = "TH"


Instance: OrganizationMedicalCouncil
InstanceOf: Organization
Title: "แพทยสภา"
Description: "แพทยสภา"
* active = true
* type = $CS_HL7_IdentifierType#XX "Organization identifier"
* name = "แพทยสภา"