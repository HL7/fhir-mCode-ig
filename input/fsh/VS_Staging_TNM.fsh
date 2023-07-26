//******************** TNM Staging **************************/

// Observation.method
ValueSet: TNMStagingMethodVS
Id: mcode-tnm-staging-method-vs
Title: "TNM Staging Method Value Set"
Description: "Staging method used for AJCC TNM staging, e.g., AJCC 6th, 7th, or 8th edition."
* insert SNOMEDCopyrightForVS
* SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* SCT#1269566009 "American Joint Commission on Cancer, Cancer Staging Manual, 9th version neoplasm staging system (tumor staging)"
* NCIT#C191343 "AJCC Cancer Staging Manual 4th Edition"
* NCIT#C191344 "AJCC Cancer Staging Manual 5th Edition"

// Stage Group

ValueSet: TNMStageGroupStagingTypeVS
Id: mcode-tnm-stage-group-staging-type-vs
Title: "TNM Stage Group Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed, i.e., clinical, pathological, or other, for AJCC stage group observation."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"
* LNC#21914-7 "Stage group.other Cancer"

// valueCodeableConcept
ValueSet: TNMStageGroupVS
Id: mcode-tnm-stage-group-vs
Title: "TNM Stage Group Value Set"
Description: "Result values for cancer stage group using TNM staging following AJCC staging guidelines. This value set contains SNOMED-CT equivalents of AJCC codes for Stage Group, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222592004 "American Joint Committee on Cancer clinical stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222593009 "American Joint Committee on Cancer pathological stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222594003 "American Joint Committee on Cancer yp stage group allowable value (qualifier value)"

ValueSet: TNMStageGroupMaxVS
Id: mcode-tnm-stage-group-max-vs
Title: "TNM Stage Group Maximum Value Set"
Description: "Values for AJCC TNM stage group MUST be selected from this value set, which includes all codes from AJCC and all codes from TNMStageGroupVS."
* ^experimental = false
* include codes from valueset TNMStageGroupVS
* include codes from system AJCC

// Primary Tumor

ValueSet: TNMPrimaryTumorStagingTypeVS
Id: mcode-tnm-primary-tumor-staging-type-vs
Title: "TNM Primary Tumor Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed, i.e., clinical, pathological, or other, for primary tumor (T) staging observation, under AJCC guidelines."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* LNC#21899-0 "Primary tumor.pathology Cancer"
* LNC#21911-3 "Primary tumor.other [Class] Cancer"

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "Result values for T category, following AJCC staging guidelines. This value set contains SNOMED-CT equivalents of AJCC codes for the T category, according to AJCC TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222585009 "American Joint Committee on Cancer clinical T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222589003 "American Joint Committee on Cancer pathological T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222595002 "American Joint Committee on Cancer ypT category allowable value (qualifier value)"

ValueSet: TNMPrimaryTumorCategoryMaxVS
Id: mcode-tnm-primary-tumor-category-max-vs
Title: "TNM Primary Tumor Maximum Value Set"
Description: "Values for TNM primary tumor category MUST be selected from this value set, when using AJCC staging guidelines. The value set includes all codes from AJCC and all codes from TNMPrimaryTumorCategoryVS."
* ^experimental = false
* include codes from valueset TNMPrimaryTumorCategoryVS
* include codes from system AJCC

// Regional Nodes

ValueSet: TNMRegionalNodesStagingTypeVS
Id: mcode-tnm-regional-nodes-staging-type-vs
Title: "TNM Regional Nodes Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed for AJCC N category, i.e., clinical, pathological, or other, for regional nodes (N) staging observation."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* LNC#21912-1 "Regional lymph nodes.other [Class] Cancer"

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "Result values for AJCC N category. This value set contains SNOMED-CT equivalents of AJCC codes for the N category, according to AJCC TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222588006 "American Joint Committee on Cancer clinical N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222590007 "American Joint Committee on Cancer pathological N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222596001 "American Joint Committee on Cancer ypN category allowable value (qualifier value)"

ValueSet: TNMRegionalNodesCategoryMaxVS
Id: mcode-tnm-regional-nodes-category-max-vs
Title: "TNM Regional Nodes Maximum Value Set"
Description: "Values for TNM regional nodes category under AJCC staging rules MUST be selected from this value set, which includes all codes from AJCC and all codes from TNMRegionalNodesCategoryVS."
* ^experimental = false
* include codes from valueset TNMRegionalNodesCategoryVS
* include codes from system AJCC

// Distant Mets

ValueSet: TNMDistantMetastasesStagingTypeVS
Id: mcode-tnm-distant-metastases-staging-type-vs
Title: "TNM Distant Metastases Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed, i.e., clinical, pathological, or other, for distant metastases (M) staging observation, under AJCC staging guidelines."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* LNC#21913-9 "Distant metastases.other [Class] Cancer"

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "Result values for AJCC M category. This value set contains SNOMED-CT equivalents of AJCC codes for the M category, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222587001 "American Joint Committee on Cancer clinical M category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222591006 "American Joint Committee on Cancer pathological M category allowable value (qualifier value)"

ValueSet: TNMDistantMetastasesCategoryMaxVS
Id: mcode-tnm-distant-metastases-category-max-vs
Title: "TNM Distant Metastases Maximum Value Set"
Description: "Values for TNM distant metastases category under AJCC staging rules MUST be selected from this value set, which includes all codes from AJCC and all codes from TNMDistantMetastasesCategoryVS."
* ^experimental = false
* include codes from valueset TNMDistantMetastasesCategoryVS
* include codes from system AJCC