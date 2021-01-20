Instance: example1-mcode-tumor-size
InstanceOf: TumorSize
Description: "EXPERIMENTAL example of a resource conforming to the tumor size profile."
* status = #final
* method = LNC#24419-4 "Pathology report gross observation"
* subject = Reference(Patient/mCODEPatientExample1)
* focus = Reference(BodyStructure/example1-mcode-tumor)
* component[tumorLongestDimension].valueQuantity = 1.2 'cm' "cm"
* component[tumorOtherDimension].valueQuantity = 1.0 'cm' "cm"
* component[tumorOtherDimension].valueQuantity = 0.5 'cm' "cm"

Instance: example1-mcode-tumor
InstanceOf: Tumor
Description: "EXPERIMENTAL example of a resource conforming to the tumor profile."
* patient = Reference(Patient/mCODEPatientExample1)
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
