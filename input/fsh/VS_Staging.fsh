//******************** General Staging Value Sets (TNM and non-TNM) **************************/

// Observation.code
ValueSet: CancerStageTypeVS
Id: mcode-cancer-stage-type-vs
Title: "Cancer Stage Type Value Set"
Description: "Codes that identify the kind of stage reported in an Observation, necessary to correctly interpret the value associated with a staging Observation. In terms of the SNOMED CT hierarchy, these codes represent observable entities. If the staging system used to determine the stage is not implicit in this code, the staging system must be separately recorded in Observation.method. More specific staging profiles, if available, should be consulted before determining the correct code."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
//* include codes from system SCT where concept is-a #399566009 "Tumor-node-metastasis (TNM) category (observable entity)"
* SCT#399566009 "Tumor-node-metastasis (TNM) category (observable entity)"
* SCT#78873005 "T category (observable entity)"
* SCT#277206009 "N category (observable entity)"
* SCT#277208005 "M category (observable entity)"
* SCT#399703000 "Integrated TNM category (observable entity)"
* SCT#399437009 "Integrated M category (observable entity)"
* SCT#399458003 "Integrated N category (observable entity)"
* SCT#399556001 "Integrated T category (observable entity)"
* SCT#106248000 "TNM classification of malignant tumor before any treatment (observable entity)"
* SCT#399387003 "cM category (observable entity)"
* SCT#399534004 "cN category (observable entity)"
* SCT#399504009 "cT category (observable entity)"
* SCT#106249008 "TNM classification of malignant tumor after operation (observable entity)"
* SCT#371497001 "pM category (observable entity)"
* SCT#371494008 "pN category (observable entity)"
* SCT#384625004 "pT category (observable entity)"
//* include codes from system SCT where concept is-a #399390009 "Tumor-node-metastasis (TNM) stage grouping (observable entity)"
* SCT#399390009 "Tumor-node-metastasis (TNM) stage grouping (observable entity)"
* SCT#399537006 "Clinical TNM stage grouping (observable entity)"
* SCT#399588009 "Pathologic TNM stage grouping (observable entity)"
//* include codes from system SCT where concept is-a #385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* SCT#385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* SCT#385363007 "FIGO ovarian tumor stage (observable entity)"
* SCT#385365000 "FIGO stage for epithelial tumor of ovary (observable entity)"
* SCT#385367008 "FIGO stage for cervical carcinoma (observable entity)"
* SCT#385375002 "FIGO stage for endometrial carcinoma (observable entity)"
* SCT#385369006 "FIGO stage for vulvar carcinoma (observable entity)"
* SCT#385373009 "FIGO uterine tumor stage (observable entity)"
//* include codes from system SCT where concept descendant-of #371508000 "Tumor stage (observable entity)"
* SCT#385388004 "Lymphoma stage (observable entity)"
// singletons
* SCT#385349001 "Clinical stage (observable entity)"
* SCT#103420007 "Modified Dukes stage (observable entity)"
* SCT#385357003 "Dukes stage (observable entity)"
* SCT#17964000 "Residual tumor stage (observable entity)"
* SCT#371495009 "Stage of tumor involvement of non-regional lymph nodes (observable entity)"
// unapproved attribute, do not include! * include codes from system SCT where concept is-a #260760003 "Staging of disease (attribute)"
// NCI Thesaurus terms
* NCIT#C134969 "AIDS-Related Kaposi Sarcoma Stage"
* NCIT#C90529 "AJCC v6 Stage"
* NCIT#C90530 "AJCC v7 Stage"
* NCIT#C177555 "AJCC v8 Clinical Stage"
* NCIT#C177556 "AJCC v8 Pathologic Stage"
* NCIT#C132248 "AJCC v8 Stage"
* NCIT#C180901 "AJCC v9 Stage"
* NCIT#C177558 "Ann Arbor Clinical Stage"
* NCIT#C177559 "Ann Arbor Pathologic Stage"
* NCIT#C141138 "Ann Arbor Stage"
* NCIT#C115134 "BCLC Stage"
* NCIT#C141212 "Binet Stage"
* NCIT#C139445 "Breast Cancer Anatomic Stage"
* NCIT#C139446 "Breast Cancer Prognostic Stage"
* NCIT#C139006 "Durie/Salmon Stage"
* NCIT#C141099 "ENSAT Stage"
* NCIT#C186618 "FIGO 2009 Stage"
* NCIT#C186617 "FIGO 2018 Stage"
* NCIT#C125738 "FIGO Stage"
* NCIT#C157232 "FIGO/TNM Stage"
* NCIT#C28067 "Hepatoblastoma Stage"
* NCIT#C139007 "International Staging System Stage"
* NCIT#C141147 "Lugano Stage"
* NCIT#C143151 "Masaoka-Koga Stage"
* NCIT#C146847 "Mediastinal Malignant Germ Cell Tumor Stage"
* NCIT#C16899 "Neoplasm Stage"
* NCIT#C174125 "Neoplastic Disease Extent Indicator"
* NCIT#C141461 "Occult Stage"

// Observation.method
ValueSet: CancerStagingMethodVS
Id: mcode-cancer-staging-method-vs
Title: "Cancer Staging Method Value Set"
Description: "Staging system or method used for staging cancers. The terms in this value set describe staging systems, not specific stages or descriptors used within those systems."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* SCT#254381008 "American Urological Association staging system for prostate cancer (tumor staging)"
* SCT#254373007 "Ann Arbor Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* SCT#254374001 "Ann Arbor non-Hodgkin's lymphoma tumor staging system (tumor staging)"
* SCT#254361007 "Astler-Coller staging system (tumor staging)"
* SCT#1149164009 "Australian Clinicopathological Staging System for colorectal cancer (tumor staging)"
* SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* SCT#385346008 "Breslow system for melanoma staging (tumor staging)"
* SCT#385345007 "Clark system for melanoma staging (tumor staging)"
* SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254360008 "Dukes staging system (tumor staging)"
* SCT#254379006 "Indiana University testicular tumor staging system (tumor staging)"
* SCT#254386003 "International Federation of Gynecology and Obstetrics ovarian tumor staging system (tumor staging)"
* SCT#106250008 "International Federation of Gynecology and Obstetrics staging system for cervical carcinoma (tumor staging)"
* SCT#106244003 "International Federation of Gynecology and Obstetrics staging system for endometrial carcinoma (tumor staging)"
* SCT#106247005 "International Federation of Gynecology and Obstetrics staging system for epithelial tumor of ovary (tumor staging)"
* SCT#106245002 "International Federation of Gynecology and Obstetrics staging system for vulvar carcinoma (tumor staging)"
* SCT#106246001 "International Federation of Gynecology and Obstetrics staging system for vulvar melanoma (tumor staging)"
* SCT#254383006 "International Federation of Gynecology and Obstetrics staging system of gynecological malignancy (tumor staging)"
* SCT#254385004 "International Federation of Gynecology and Obstetrics uterine tumor staging system (tumor staging)"
* SCT#254384000 "International Federation of Gynecology and Obstetrics vaginal tumor staging system (tumor staging)"
* SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
* SCT#254380009 "Marshall Modification of Jewett-Strong staging system for urinary bladder tumor (tumor staging)"
* SCT#254362000 "Modified Astler-Coller staging system (tumor staging)"
* SCT#385359000 "Modified Dukes staging system (tumor staging)"
* SCT#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
* SCT#254366002 "Stannard staging system for retinoblastoma (tumor staging)"
* SCT#254382001 "Trophoblastic malignancy staging system (tumor staging)"
* SCT#254378003 "Walter Reed testicular tumor staging system (tumor staging)"
* SCT_TBD#USCRS-34949 "Enneking surgical staging system (tumor staging)" // requested June 2023
* SCT_TBD#USCRS-34955 "UICC Classification of Malignant Tumours 8th Edition (tumor staging)" // requested June 2023
* SCT_TBD#USCRS-34956 "UICC Classification of Malignant Tumours 7th Edition (tumor staging)"  // requested June 2023
* SCT_TBD#USCRS-34947  "Surveillance Epidemiology and End Results Program Extent of Disease, 2018 edition (tumor staging)"    // requested 6/9/23
* SCT_TBD#1287648008 "Masaoka-Koga stage classification for thymic malignancies (tumor staging)" // #USCRS-34950 requested June 2023
* SCT_TBD#1287646007 "International Germ Cell Consensus Classification (tumor staging)" //#USCRS-34948 requested June 2023
// NCIT Terms
* NCIT#C186527 "Atypical Teratoid/Rhabdoid Tumor Staging System"
* NCIT#C141206  "Chronic Lymphocytic Leukemia- Modified Rai Staging System"
* NCIT#C62575 "Collaborative Staging"
* NCIT#C128932 "Derkay Staging System"
* NCIT#C186536 "Embryonal Tumor with Multilayered Rosettes Staging System"
* NCIT#C140258 "Enneking Staging System"
* NCIT#C85407 "Evans Staging System"
* NCIT#C99408 "FIGO Staging System and Modified World Health Organization [WHO] Prognostic Scoring System for Gestational Trophoblastic Neoplasms"
* NCIT#C115132 "Hepatocellular Carcinoma by BCLC Stage"
* NCIT#C111073 "International Germ Cell Consensus Risk Classification"
* NCIT#C141168 "Lugano Classification Hodgkin Lymphoma by AJCC v8 Stage"
* NCIT#C186520 "Medulloblastoma Staging System"
* NCIT#C198826 "Modified Chang Staging System for Medulloblastoma"
* NCIT#C177308 "Non-Seminomatous Germ Cell Tumor International Germ Cell Consensus Risk Classification"
* NCIT#C186567 "Pineoblastoma Staging System"
* NCIT#C123333 "Reese-Ellsworth Staging System"
* NCIT#C177309 "Seminoma International Germ Cell Tumor Consensus Risk Classification"
* NCIT#C112006 "Thymoma by Masaoka-Koga Stage"
* NCIT#C18008 "TNM Ovary Neoplasm Staging"
* NCIT#C141685 "Veterans Administration Lung Study Group Clinical Classification"
* NCIT#C18214 "Whitmore-Jewett Staging System"

// Observation.value
ValueSet: CancerStageValueVS
Id: mcode-cancer-stage-value-vs
Title: "Cancer Stage Value Set"
Description: "A non-exhaustive value set containing codes that result from cancer staging, i.e., the stage or category of the cancer."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #1222585009 "American Joint Committee on Cancer clinical T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222587001 "American Joint Committee on Cancer clinical M category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222588006 "American Joint Committee on Cancer clinical N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222589003 "American Joint Committee on Cancer pathological T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222590007 "American Joint Committee on Cancer pathological N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222591006 "American Joint Committee on Cancer pathological M category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222592004 "American Joint Committee on Cancer clinical stage group allowable value"
* include codes from system SCT where concept descendant-of #1222593009 "American Joint Committee on Cancer pathological stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222594003 "American Joint Committee on Cancer yp stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222595002 "American Joint Committee on Cancer ypT category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222596001 "American Joint Committee on Cancer ypN category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222598000 "American Joint Committee on Cancer clinical grade allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222599008 "American Joint Committee on Cancer pathological grade allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222600006 "American Joint Committee on Cancer yp grade allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222601005 "American Joint Committee on Cancer residual tumor allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #258318002 "Generic anatomical site tumor invasion status (tumor staging)"
* include codes from system SCT where concept descendant-of #258309004 "Generic lymph node tumor invasion status stage (tumor staging)"
* include codes from system SCT where concept descendant-of #258233007 "Generic tumor staging descriptor (tumor staging)"
* include codes from system SCT where concept descendant-of #258271004 "Specific tumor staging descriptor (tumor staging)"
* include codes from system SCT where concept descendant-of #106242004 "Walter Reed staging of prostatic cancer (tumor staging)"
