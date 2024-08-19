Instance: crane-cccn-definition-activity-staging-diagnostics
InstanceOf: CraNE_CCCN_Lung_Cancer_Pathway_Activity
Title: "CraNE CCCN Lung Cancer Pathway Activity Staging Diagnostics Definition"
Description: "CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Activity Staging Diagnostics Definition"
Usage: #definition
* insert Header

* title = "Staging Diagnostics"

// BPMN Activity: Staging Diagnostics
* action[+].id = "staging-diagnostics"
* action[=].title = "Staging Diagnostics"
* action[=].description = "Staging Diagnostics"
* action[=].code = $SCT#386053000 "Evaluation procedure (procedure)"
* action[=].code = $SCT#165197003 "Diagnostic assessment (procedure)"
* action[=].code = $SCT#396927009 "Molecular testing, diagnostic (procedure)"
* action[=].code = $SCT#370851004 "Evaluation of diagnostic study results (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Staging Imaging necessary?"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Is Imaging Requested"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].relatedAction.actionId = "cccn-discharge"
* action[=].relatedAction.relationship = #before-start
* action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-06)

// BPMN Task: Staging Diagnostics / Imaging
* action[=].action[+].id = "imaging"
* action[=].action[=].title = "Imaging"
* action[=].action[=].description = "Imaging, Usually in Ambulatory Care; X-Ray Thorax, PET-CT Thorax/Abdomen, MRI Skull"
* action[=].action[=].code = $SCT#363679005 "Imaging (procedure)"
* action[=].action[=].code = $SCT#413815006 "Chest imaging (procedure)"
* action[=].action[=].code = $SCT#441875004 "Imaging of head (procedure)"
* action[=].action[=].code = $SCT#363680008 "Radiographic imaging procedure (procedure)"
* action[=].action[=].code = $SCT#450436003 "Positron emission tomography with computed tomography (procedure)"
* action[=].action[=].code = $SCT#241601008 "Magnetic resonance imaging of head (procedure)"
* action[=].action[=].relatedAction.actionId = "tumor-staging"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[=].relatedAction.actionId = "diagnosis-assurance"
* action[=].action[=].relatedAction.relationship = #concurrent-with-start

// BPMN Activity: Staging Diagnostics / Diagnosis Assurance
* action[=].action[+].id = "diagnosis-assurance"
* action[=].action[=].title = "Diagnosis Assurance"
* action[=].action[=].description = "Diagnosis Assurance"
* action[=].action[=].code = $SCT#165197003 "Diagnostic assessment (procedure)"
* action[=].action[=].relatedAction.actionId = "pathology"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[=].relatedAction.actionId = "imaging"
* action[=].action[=].relatedAction.relationship = #concurrent-with-start
* action[=].action[=].groupingBehavior = #logical-group
* action[=].action[=].selectionBehavior = #any

// BPMN Task: Staging Diagnostics / Diagnosis Assurance / Bronchoscopy
* action[=].action[=].action[+].id = "bronchoscopy"
* action[=].action[=].action[=].title = "Bronchoscopy"
* action[=].action[=].action[=].description = "Bronchoscopy"
* action[=].action[=].action[=].code = $SCT#55198006 "Bronchoscopy with biopsy (procedure)"
* action[=].action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-16)

// BPMN Task: Staging Diagnostics / Diagnosis Assurance / Mediastinal Staging
// NOTE: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4128458/
// NOTE: https://pubmed.ncbi.nlm.nih.gov/31797211/
* action[=].action[=].action[+].id = "mediastinal-staging"
* action[=].action[=].action[=].title = "Mediastinal Staging"
* action[=].action[=].action[=].description = "Mediastinal Staging (e.g. EBUS/EUS)"
* action[=].action[=].action[=].code = $SCT#441561002 "Endobronchial ultrasound examination of mediastinum (procedure)"
* action[=].action[=].action[=].code = $SCT#1137699004 "Endoscopic EBUS-TBNA (endobronchial ultrasound transbronchial needle aspiration) of mediastinal lymph node"
* action[=].action[=].action[=].code = $SCT#450556004 "Endoscopic ultrasonography (procedure)"
* action[=].action[=].action[=].code = $SCT#879954008 "EUS FNA (endoscopic ultrasonography fine needle aspiration) of mediastinal lymph node"
* action[=].action[=].action[=].code = $SCT#261479009 "Mediastinoscopy (procedure)"
* action[=].action[=].action[=].code = $SCT#238325002 "Mediastinoscopy and lymph node sampling (procedure)"

// BPMN Task: Staging Diagnostics / Diagnosis Assurance / Image-guided Biopsy
// NOTE: https://pubmed.ncbi.nlm.nih.gov/27481575/
* action[=].action[=].action[+].id = "image-guided-biopsy"
* action[=].action[=].action[=].title = "Image-guided Biopsy"
* action[=].action[=].action[=].description = "Image-guided Biopsy (Primary Lesion, Metastases)"
* action[=].action[=].action[=].code = $SCT#277590007 "Imaging guided biopsy (procedure)"
* action[=].action[=].action[=].code = $SCT#277591006 "Computed tomography guided biopsy (procedure)"

// BPMN Task: Staging Diagnostics / Pathology, Molecular Pathology
* action[=].action[+].id = "pathology"
* action[=].action[=].title = "Pathology / Molecular Pathology"
* action[=].action[=].description = "According to guideline recommendations; If needed liquid biopsy"
* action[=].action[=].code = $SCT#168456004 "Gross pathology request (procedure)"
* action[=].action[=].code = $SCT#275640004 "Refer to pathology laboratory (procedure)"
* action[=].action[=].code = $SCT#708179009 "Molecular pathology service (qualifier value)"
* action[=].action[=].relatedAction.actionId = "diagnosis-assurance"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].relatedAction.actionId = "tumor-staging"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-04)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-05)
// TODO: Pathology Report Result Output

// BPMN Task: Staging Diagnostics / cTNM Classification and Staging
* action[=].action[+].id = "tumor-staging"
* action[=].action[=].title = "cTNM Classification and Staging"
* action[=].action[=].description = "Clinical Stage Classifications of Malignant Tumors (cTNM) and Staging"
* action[=].action[=].code = $SCT#254292007 "Tumor staging (tumor staging)"
* action[=].action[=].code = $SCT#258234001 "Tumor-node-metastasis (TNM) tumor staging classifications (tumor staging)"
* action[=].action[=].relatedAction.actionId = "imaging"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].relatedAction.actionId = "pathology"
* action[=].action[=].relatedAction.relationship = #after-end

// BPMN Task: CCCN Discharge
* action[+].id = "cccn-discharge"
* action[=].title = "CCCN Discharge"
* action[=].description = "CCCN Discharge"
* action[=].code = $SCT#58000006 "Patient discharge (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "No lung cancer confirmation"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Diagnosis Not Confirmed"
* action[=].relatedAction.actionId = "staging-diagnostics"
* action[=].relatedAction.relationship = #after-end