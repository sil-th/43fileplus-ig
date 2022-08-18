Instance: questionnaire-refer-history
InstanceOf: Questionnaire
Title: "ตัวอย่าง Questionnaire: ข้อมูลประวัติการส่งต่อผู้ป่วย (ทั้งกรณีส่งออก และรับเข้า)"
Description: "ใช้ประกอบการรายงานแฟ้ม REFER_HISTORY"
Usage: #example
* url = $QN_TH_ReferHistory
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2022-01-01"
* code = $CS_THCC_QnType#REFER_HISTORY "ข้อมูลประวัติการส่งต่อผู้ป่วย (ทั้งกรณีส่งออก และรับเข้า)"
* item[0]
  * linkId = "1"
  * text = "ประวัติการป่วยในปัจจุบัน (ข้อความสรุป)"
  * type = #string
* item[+]
  * linkId = "2"
  * text = "ประวัติการป่วยในอดีตและครอบครัว (ข้อความ)"
  * type = #string
* item[+]
  * linkId = "3"
  * text = "ผลการตรวจชันสูตรจากห้องทดลอง (ข้อความสรุป)"
  * type = #string
* item[+]
  * linkId = "4"
  * text = "การตรวจวินิจฉัยโรคขั้นต้น (ข้อความสรุป)"
  * type = #string
* item[+]
  * linkId = "5"
  * text = "การรักษาที่ได้ให้ไว้แล้ว (ข้อความสรุป)"
  * type = #string
* item[+]
  * linkId = "6"
  * text = "สรุปผลการวินิจฉัยและรักษา (ข้อความ)"
  * type = #string