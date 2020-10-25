Instance: mcode-tumor-size
InstanceOf: TumorSize
Description: "EXPERIMENTAL example of a resource conforming to the tumor size profile."
* id = "mcode-tumor-size"
* status = #final
* subject = Reference(Patient/mCODEPatientExample01)
* focus = Reference(BodyStructure/mcode-tumor)

* component[tumorLongestDimension].valueQuantity = UCUM#cm
* component[tumorLongestDimension].valueQuantity.value = 1.2

* component[tumorDimension2].valueQuantity = UCUM#cm
* component[tumorDimension2].valueQuantity.value = 1.0

* component[tumorDimension2].valueQuantity = UCUM#cm
* component[tumorDimension2].valueQuantity.value = 0.5

Instance: mcode-tumor
InstanceOf: Tumor
Description: "EXPERIMENTAL example of a resource conforming to the tumor profile."
* id = "mcode-tumor"
* patient = Reference(Patient/mCODEPatientExample01)

// Resources conforming to this profile indicate that the tumor is still in the body.
// This implies it is being measured by radiology. The identifier here is a hypothetical
// radiology identifier for a specific tumor.
//
// The generic "resource identifier" type is used here because there does not seem to be
// a more suitable type at http://hl7.org/fhir/R4/v2/0203/index.html.
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#RI "Resource identifier"
* identifier.system = "http://radiology.hospital.example.org"
* identifier.value = "1234"

* morphology = SCT#89740008 "Lobular carcinoma (morphologic abnormality)"
* location = SCT#80248007 "Left breast structure (body structure)"