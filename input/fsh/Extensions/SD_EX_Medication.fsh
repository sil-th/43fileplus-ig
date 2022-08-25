// Alias: $EX_TH_MedImage = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-med-image
// * extension[0]
//   * url = $EX_TH_MedImage
//   * valueUri = "http://example.com/image1.jpg"
Extension: EX_TH_MedImage
Id: ex-medication-med-image
Title: "URL ของรูปถ่ายยา"
Description: "URL ของรูปถ่ายยา"
* ^url = $EX_TH_MedImage
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Medication"
* . 0..*
* . ^short = "URL ของรูปถ่ายยา"
* . ^definition = "URL ของรูปถ่ายยา"
* value[x] 1..
* value[x] only uri