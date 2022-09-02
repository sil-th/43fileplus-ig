Profile: Moph43pLocationHome
Parent: Location
Id: moph43p-location-home
Title: "MoPH43p Location: Home"
Description: "ข้อมูลที่ตั้งและสุขาภิบาลของหลังคาเรือนในเขตรับผิดชอบ"
* ^url = $SD_Location_Home
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_AddressHouseType named houseType 0..1 MS and
  $EX_TH_LocationHouseOwner named houseOwner 0..1 and
  $EX_TH_LocationResponsibleVolunteer named responsibleVolunteer 0..1 and
  $EX_TH_LocationHouseholdCount named householdCount 0..1 and
  $EX_TH_LocationInMunicipality named inMunicipality 0..1
* extension[houseType] ^short = "ประเภทที่อยู่"
* extension[houseOwner] ^short = "รหัสเจ้าบ้าน"
* extension[responsibleVolunteer] ^short = "รหัสอสม."
* extension[householdCount] ^short = "จำนวนครอบครัว"
* extension[inMunicipality] ^short = "ที่ตั้งอยู่ในเขตเทศบาลหรือไม่"
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    hid 0..1 MS and
    houseNo 0..1 MS
* identifier[hid] ^short = "รหัสบ้าน"
* identifier[hid] ^definition = "รหัสบ้านที่กำหนดโดยโปรแกรมเรียงลำดับไม่ซ้ำกัน"
* identifier[hid].system 1..
* identifier[hid].system obeys HID-uri
* identifier[hid].system ^example.label = "HID namespace"
* identifier[hid].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/House"
* identifier[hid].value 1..
* identifier[houseNo] ^short = "รหัสบ้านตามกรมการปกครอง"
* identifier[houseNo] ^definition = "เลขประจำบ้าน ตามกรมการปกครองกำหนดเป็นรหัสประจำบ้าน"
* identifier[houseNo].system 1..
* identifier[houseNo].system = $ID_DopaHouseNo (exactly)
* identifier[houseNo].value 1..
* type MS
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type contains type 0..1 MS
* type[type].coding.system 1..
* type[type].coding.system = $CS_HL7_RelationshipType (exactly)
* type[type].coding.code 1..
* type[type].coding.code = #PTRES (exactly)
* telecom MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains phone 0..* MS
* telecom[phone].system 1..
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..
* address MS
* address.extension contains
    $EX_TH_AddressStructuredLine named structuredLine 0..1 MS
* physicalType MS
* physicalType ^short = "ประเภทที่อยู่"
* physicalType.coding ^slicing.discriminator.type = #value
* physicalType.coding ^slicing.discriminator.path = "system"
* physicalType.coding ^slicing.rules = #open
* physicalType.coding contains
    thcc 0..1 MS
* physicalType.coding[thcc] from $VS_THCC_HouseType (extensible)
* physicalType.coding[thcc].system 1..
* physicalType.coding[thcc].system = $CS_THCC_HouseType (exactly)
* physicalType.coding[thcc].code 1..
* position MS
* position.longitude MS
* position.latitude MS
* managingOrganization only Reference($SD_Organization_Provider)
* managingOrganization MS

