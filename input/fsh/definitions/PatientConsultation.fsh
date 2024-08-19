// TODO: Clarify request for procedure or discussion of results/ findings
Instance: crane-cccn-definition-activity-patient-consultation
InstanceOf: CraNE_CCCN_Pathway_Activity
Title: "CraNE CCCN Pathway Activity Patient Consultation Definition"
Description: "CraNE Comprehensive Cancer Care Network Pathway Activity Patient Consultation Definition"
Usage: #definition
* insert Header

* title = "Patient Consultation"

// BPMN Activity: Patient Consultation
* action[+].title = "Patient Consultation"
* action[=].description = "Patient Consultation"
* action[=].code = $SCT#1237136005 "Consultation with patient (procedure)"
* action[=].trigger.type = #named-event
* action[=].trigger.name = "Patient Consultation Appointment"
* action[=].condition[+].kind = #start
* action[=].condition[=].expression.description = "Patient with Symptoms OR Patient with Histologically Confirmed Lung Cancer OR Citizen with Positive Lung Cancer Screening Results"
* action[=].condition[=].expression.language = #text/cql
// TODO: Check interpreatation for correctness
* action[=].condition[=].expression.expression = "Has Suspected or Confirmed Diagnosis"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].requiredBehavior = #must-unless-documented
* action[=].cardinalityBehavior = #single

// BPMN Task: Patient Consultation / Medical History
// TODO: Find more appropriate title and description, e.g. Personal History Assessment
* action[=].action[+].title = "Medical History"
* action[=].action[=].description = "Medical History, Familiy History, Social History, Smoking Status (Survey of Current Status), Occupational Exposure"
* action[=].action[=].code = $SCT#225886003 "Medical assessment (procedure)"
* action[=].action[=].code = $SCT#410551005 "Family history taking (procedure)"
* action[=].action[=].code = $SCT#406551008 "Social assessment (procedure)"
* action[=].action[=].code = $SCT#171209009 "Tobacco usage screening (procedure)"

// BPMN Task: Patient Consultation / General Diagnostics
// TODO: Find more appropriate title and description, e.g. Physical Assessment
* action[=].action[+].title = "General Diagnostics"
* action[=].action[=].description = "Physical Examination, Assessing Comorbidities, Performance Status Assessment (ECOG, Karnofsky Performance Status Scale)"
// TODO: * action[=].action[=].code = $SCT#5880005 "Physical examination procedure (procedure)"
// TODO: * action[=].action[=].code = $SCT#81375008 "Physical assessment (procedure)"
* action[=].action[=].code = $SCT#410182004 "Physical examination assessment (procedure)"
* action[=].action[=].code = $SCT#445536008 "Assessment using assessment scale (procedure)"
// TODO: List possible assessment scales or instruments?
// NOTE: See https://doi.org/10.1016/j.jgo.2016.02.003
// TODO: No SCT code available for Simplified Comorbidity Scale (SCS)
// TODO: No SCT code available for Cumulative Illness Rating Scale for Geriatrics (CIRS-G)
// TODO: * action[=].action[=].code = $SCT#273437007 "Eastern Cooperative Oncology Group scale for physical assessment (assessment scale)"
// TODO: * action[=].action[=].code = $SCT#273546003 "Karnofsky performance status (assessment scale)"
// TODO: * action[=].action[=].code = $SCT#762713009 "Charlson Comorbidity Index (assessment scale)"
// TODO: * action[=].action[=].code = $SCT#446619003 "Adult comorbidity evaluation-27 (assessment scale)"
// TODO: * action[=].action[=].code = $SCT#440233001 "Duke older Americans resources and services instrumental activities of daily living score (assessment scale)"

// BPMN Task: Patient Consultation / Laboratory
// TODO: Find more appropriate title and description, e.g. Laboratory Testing
// NOTE: https://www.cancer.org/cancer/types/bone-cancer/detection-diagnosis-staging/how-diagnosed.html
* action[=].action[+].title = "Laboratory"
* action[=].action[=].description = "Blood Cell Counts, Renal Function, Liver Enzymes, Bone Parameters, LDH, NSE"
* action[=].action[=].code = $SCT#15220000 "Laboratory test (procedure)"
// NOTE: https://www.ncbi.nlm.nih.gov/books/NBK507821/
* action[=].action[=].code = $SCT#88308000 "Blood cell count (procedure)"
* action[=].action[=].code = $SCT#269858003 "Biochemical evaluation of blood urea/renal function (procedure)"
* action[=].action[=].code = $SCT#269856004 "Measurement of liver enzyme (procedure)"
// NOTE: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9186248/
* action[=].action[=].code = $SCT#13861005 "Biopsy of bone (procedure)"
* action[=].action[=].code = $SCT#11274001 "Lactate dehydrogenase measurement (procedure)"
* action[=].action[=].code = $SCT#35785002 "Measurement of gamma-enolase (procedure)"

// BPMN Task: Patient Consultation / Patient Information
// TODO: Find more appropriate title and description, e.g. Patient Information and Education
* action[=].action[+].title = "Patient Information"
* action[=].action[=].description = "Esp. Smoking Cessation"
* action[=].action[=].code = $SCT#310866003 "Informing patient (procedure)"
* action[=].action[=].code = $SCT#225323000 "Smoking cessation education (procedure)"
// TODO: Consultation vs. Education * action[=].action[=].code = $SCT#1290027009 "Consultation for smoking cessation (procedure)"
// TODO: * action[=].action[=].code = $SCT#409073007 "Education (procedure)"