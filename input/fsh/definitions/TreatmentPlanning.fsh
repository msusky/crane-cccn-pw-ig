Instance: crane-cccn-definition-activity-treatment-planning
InstanceOf: CraNE_CCCN_Lung_Cancer_Pathway_Activity
Title: "CraNE CCCN Lung Cancer Pathway Activity Treatment Planning Definition"
Description: "CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Activity Treatment Planning Definition"
Usage: #definition
* insert Header

* title = "Treatment Planning"

// BPMN Activity: Standard Tumorboard (TB) Meeting
// TODO: TB Report/ Recommendation Output
* action[+].id = "tumor-conference"
* action[=].title = "Tumorboard Meeting"
* action[=].description = "Standard Tumorboard (TB) Meeting"
* action[=].code = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].code = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].code = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].relatedAction.actionId = "staging-diagnostics"
* action[=].relatedAction.relationship = #after-end

// BPMN Task: Standard Tumorboard (TB) Meeting / Registration of Patient for Tumorboard Meeting
// TODO: Patient and Diagnostics Data Input
* action[=].action[+].id = "tumor-conference-registration"
* action[=].action[=].title = "Registration"
* action[=].action[=].description = "Registration of Patient for Tumorboard Meeting"
* action[=].action[=].code = $SCT#307782001 "Registration procedure (procedure)"
* action[=].action[=].code = $SCT#184047000 "Patient registration (procedure)"
* action[=].action[=].condition.kind = #start
* action[=].action[=].condition.expression.description = "Therapeutic or Diagnostic Question for Patient"
* action[=].action[=].condition.expression.language = #text/cql
* action[=].action[=].condition.expression.expression = "Therapeutic or Diagnostic Question"
* action[=].action[=].relatedAction.actionId = "tumor-conference-preparation"
* action[=].action[=].relatedAction.relationship = #before-start

// BPMN Task: Standard Tumorboard (TB) Meeting / Preparation of Tumorboard Meeting
* action[=].action[+].id = "tumor-conference-preparation"
* action[=].action[=].title = "Preparation"
* action[=].action[=].description = "Preparation of Tumorboard Meeting"
* action[=].action[=].code = $SCT#410538000 "Scheduling (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Main patient and treatment data are to be compiled in writing for the tumorboard meeting"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "A pre-appraisal of suitable study patients is to be undertaken"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Invitation of tumorboard participants"
* action[=].action[=].relatedAction[+].actionId = "tumor-conference-presentation"
* action[=].action[=].relatedAction[=].relationship = #before-start
* action[=].action[=].relatedAction[+].actionId = "tumor-conference-registration"
* action[=].action[=].relatedAction[=].relationship = #after-end

// BPMN Task: Standard Tumorboard (TB) Meeting / Presentation in Tumorboard Meeting
// TODO: Tumorboard protocol with therapy recommendation Output
// TODO: Participants/ roles as PlanDefinition.action.documentation.resource:Reference(CareTeam)
* action[=].action[+].id = "tumor-conference-presentation"
* action[=].action[=].title = "Presentation"
* action[=].action[=].description = "Presentation in Tumorboard Meeting"
* action[=].action[=].code = $SCT#427272008 "Recommendation to physician (procedure)"
* action[=].action[=].code = $SCT#223485006 "Discussion about therapy (procedure)"
* action[=].action[=].code = $SCT#223487003 "Discussion about options (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Discussion"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Decision-making: further procedure therapy / no therapy, if necessary still missing diagnostics, if necessary re-presentation"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "If suitable, study recommendation"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Participants: pathology, radiology, tumor-specific departments, possibly other participants"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Projection of the case, if necessary projection pathology/ imaging"
* action[=].action[=].condition.kind = #start
* action[=].action[=].relatedAction.actionId = "tumor-conference-preparation"
* action[=].action[=].relatedAction.relationship = #after-end

// BPMN Activity: Molecular Tumorboard (MTB) Meeting
// TODO: MTB Report/ Recommendation Output
* action[+].id = "molecular-tumor-conference"
* action[=].title = "Molecular Tumorboard Meeting"
* action[=].description = "Molecular Tumorboard (MTB) Meeting"
* action[=].code = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].code = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].code = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Guideline-based treatment options given? [No]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "No Guideline-based Treatment"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Best Supportive Care (BSC) Intend? [No]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "No Best Supportive Care Intend"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "Presentation based on documented recommendation of a tumor entity or organ-specific tumor conference: Patients with advanced or rare cancer; who have progressed through guideline-based therapy; who clinically qualify for molecular-based therapy; who agree in principle to a possible therapy based on the molecular findings (see e.g. patient information)"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "End of MTB: Study participation (early phase), off-label therapy, no furhter therapy"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].relatedAction.actionId = "tumor-conference"
* action[=].relatedAction.relationship = #after-end

// BPMN Task: Molecular Tumorboard (MTB) Meeting / Registration of Patient for Molecular Tumorboard Meeting
* action[=].action[+].id = "molecular-tumor-conference-registration"
* action[=].action[=].title = "Registration"
* action[=].action[=].description = "Registration of Patient for Molecular Tumorboard Meeting"
* action[=].action[=].code = $SCT#307782001 "Registration procedure (procedure)"
* action[=].action[=].code = $SCT#184047000 "Patient registration (procedure)"
* action[=].action[=].condition.kind = #start
* action[=].action[=].condition.expression.description = "Therapeutic or Diagnostic Question for Patient"
* action[=].action[=].condition.expression.language = #text/cql
* action[=].action[=].condition.expression.expression = "Therapeutic or Diagnostic Question"
* action[=].action[=].relatedAction.actionId = "molecular-tumor-conference-presentation"
* action[=].action[=].relatedAction.relationship = #before-start

// BPMN Task: Molecular Tumorboard (MTB) Meeting / (1st) Presentation in Molecular Tumorboard (optional)
// TODO: Participants/ roles as PlanDefinition.action.documentation.resource:Reference(CareTeam)
* action[=].action[+].id = "molecular-tumor-conference-presentation-optional"
* action[=].action[=].title = "(1st) Presentation"
* action[=].action[=].description = "(1st) Presentation in Molecular Tumorboard (optional)"
* action[=].action[=].code = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].action[=].code = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].action[=].code = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Participants: pathologist, human genetics, haematology/ oncology specialist, tumor-specific diciplines (tumor entity expert)"
* action[=].action[=].relatedAction[+].actionId = "molecular-tumor-conference-registration"
* action[=].action[=].relatedAction[=].relationship = #after-end
* action[=].action[=].relatedAction[+].actionId = "molecular-diagnostics"
* action[=].action[=].relatedAction[=].relationship = #before-start

// BPMN Group: Molecular Tumorboard (MTB) Meeting / Molecular Diagnostics
* action[=].action[+].id = "molecular-diagnostics"
* action[=].action[=].title = "Molecular Diagnostics"
* action[=].action[=].description = "Molecular Diagnostics"
* action[=].action[=].code = $SCT#396927009 "Molecular testing, diagnostic (procedure)"
* action[=].action[=].code = $SCT#308539001 "Request procedure (procedure)"
* action[=].action[=].groupingBehavior = #logical-group
* action[=].action[=].selectionBehavior = #all
* action[=].action[=].relatedAction.actionId = "molecular-tumor-conference-presentation-optional"
* action[=].action[=].relatedAction.relationship = #after-end

// BPMN Task : Molecular Tumorboard (MTB) Meeting / Molecular Diagnostics / Request for Human Genetic, Molecular Pathological Analysis
* action[=].action[=].action[+].id = "molecular-diagnostics-human-genetic-patho-analysis"
* action[=].action[=].action[=].title = "Request for Human Genetic/ Molecular Pathological Analysis"
* action[=].action[=].action[=].description = "Request for Human Genetic/ Molecular Pathological Analysis"
* action[=].action[=].action[=].code = $SCT#116148004 "Molecular genetics procedure (procedure)"
* action[=].action[=].action[=].code = $SCT#275640004 "Refer to pathology laboratory (procedure)"
* action[=].action[=].action[=].code = $SCT#423039003 "Genetics education, guidance, counseling (procedure)"
* action[=].action[=].action[=].code = $SCT#48051000087105 "Recommendation to perform genetic test (procedure)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Next Generation Sequencing (NGS), DNA Panel or WES (Whole-Genome Sequencing, WGS)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "If necessary, additional diagnostics: RNA Panel, Transcriptome, Other Optional Methods"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "In Case of Abnormalities, Validation by Standard Sequencing Methods"
* action[=].action[=].action[=].relatedAction.actionId = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].relatedAction.relationship = #before-start

// BPMN Task : Molecular Tumorboard (MTB) Meeting / Molecular Diagnostics / Bioinformatic Analysis and Processing
* action[=].action[=].action[+].id = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].title = "Bioinformatic Analysis and Processing"
* action[=].action[=].action[=].description = "Bioinformatic Analysis and Processing"
* action[=].action[=].action[=].code = $SCT#363109007 "Evaluation of test results (procedure)"
* action[=].action[=].action[=].code = $SCT#386344002 "Laboratory data interpretation (procedure)"
* action[=].action[=].action[=].code = $SCT#169282000 "Diagnostic data computerization (procedure)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Designation/ naming of the tools used with the corresponding versions"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Definition and indication of the calculation of metrics such as Tumor Mutational Burden (TMB), Homologous Recombination Deficiency (HRD), Microsatellite Instability (MSI)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Specification of databases"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Indication of the cut-offs (tolerance values) for the individual calculations"
* action[=].action[=].action[=].relatedAction[+].actionId = "molecular-diagnostics-human-genetic-patho-analysis"
* action[=].action[=].action[=].relatedAction[=].relationship = #after-end
* action[=].action[=].action[=].relatedAction[+].actionId = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].relatedAction[=].relationship = #before-start

// BPMN Task : Molecular Tumorboard (MTB) Meeting / Preparation of Findings, Reporting
// TODO: Genetic Findings with Annotated Variants Output
* action[=].action[=].action[+].id = "molecular-diagnostics-reporting"
* action[=].action[=].action[=].title = "Preparation of Findings/ Reporting"
* action[=].action[=].action[=].description = "Preparation of Findings/ Reporting"
* action[=].action[=].action[=].code = $SCT#33526004 "Laboratory reporting, electronic (procedure)"
* action[=].action[=].action[=].relatedAction.actionId = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].relatedAction.relationship = #after-end

// BPMN Task: Molecular Tumorboard (MTB) Meeting / (2nd) Presentation in Molecular Tumorboard
// TODO: Participants/ roles as PlanDefinition.action.documentation.resource:Reference(CareTeam)
// TODO: MTB protocol with therapy recommendation Output
* action[=].action[+].id = "molecular-tumor-conference-presentation"
* action[=].action[=].title = "(2nd) Presentation"
* action[=].action[=].description = "(2nd) Presentation in Molecular Tumorboard"
* action[=].action[=].code = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].action[=].code = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].action[=].code = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Participants: pathologist, human genetics, haematology/ oncology specialist, tumor-specific diciplines (tumor entity expert)"
* action[=].action[=].relatedAction.actionId = "molecular-diagnostics"
* action[=].action[=].relatedAction.relationship = #after-end

// BPMN Task: Patient Consultation after Diagnosis
* action[+].id = "patient-consultation-after-diagnosis"
* action[=].title = "Patient Consultation"
* action[=].description = "Patient Consultation after Diagnosis"
* action[=].code = $SCT#1237136005 "Consultation with patient (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Guideline-based treatment options given? [Yes]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Guideline-based Treatment"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Best Supportive Care (BSC) Intend? [Yes]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Best Supportive Care"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Further Diagnostics Necessary? [No]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "No Additional Diagnostics"
* action[=].relatedAction[+].actionId = "tumor-conference"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "molecular-tumor-conference"
* action[=].relatedAction[=].relationship = #after

// BPMN Task: Individual Reflection / Discussions, Second Opinion
// TODO: Info Material, TB/MTB Report/ Recommendation Input
* action[+].id = "patient-decision-making"
* action[=].title = "Individual Reflection / Discussion, Second Opinion"
* action[=].description = "Individual Reflection and Discussions, Second Opinion"
* action[=].code = $SCT#77406008 "Confirmatory medical consultation (procedure)"
* action[=].code = $SCT#223485006 "Discussion about therapy (procedure)"
* action[=].code = $SCT#223484005 "Discussion about treatment (procedure)"
* action[=].code = $SCT#223487003 "Discussion about options (procedure)"
* action[=].condition.kind = #applicability
* action[=].condition.expression.description = "Instant Patient Decision? [No]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Postponement Patient Decision Making"
* action[=].relatedAction[+].actionId = "patient-consultation-after-diagnosis"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "shared-decision-making"
* action[=].relatedAction[=].relationship = #before

// BPMN Task: Shared Decision-Making
// TODO: Treatment Plan Output
* action[+].id = "shared-decision-making"
* action[=].title = "Shared Decision Making"
* action[=].description = "Shared Decision Making"
* action[=].code = $SCT#223485006 "Discussion about therapy (procedure)"
* action[=].code = $SCT#223484005 "Discussion about treatment (procedure)"
* action[=].code = $SCT#223487003 "Discussion about options (procedure)"
* action[=].code = $SCT#707737009 "Discussion about priorities for care (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Instant Patient Decision? [Yes]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Instant Patient Decision Making"
* action[=].relatedAction[+].actionId = "patient-decision-making"
* action[=].relatedAction[=].relationship = #after
* action[=].relatedAction[+].actionId = "patient-consultation-after-diagnosis"
* action[=].relatedAction[=].relationship = #after-end




















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

// BPMN Activity: Staging Diagnostics / Diagnosis Assurance
* action[=].action[+].id = "diagnosis-assurance"
* action[=].action[=].title = "Diagnosis Assurance"
* action[=].action[=].description = "Diagnosis Assurance"
* action[=].action[=].code = $SCT#165197003 "Diagnostic assessment (procedure)"
* action[=].action[=].relatedAction.actionId = "pathology"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[=].groupingBehavior = #logical-group
* action[=].action[=].selectionBehavior = #any

// BPMN Task: Staging Diagnostics / Diagnosis Assurance / Bronchoscopy
* action[=].action[=].action[+].id = "bronchoscopy"
* action[=].action[=].action[=].title = "Bronchoscopy"
* action[=].action[=].action[=].description = "Bronchoscopy"
* action[=].action[=].action[=].code = $SCT#55198006 "Bronchoscopy with biopsy (procedure)"

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
* action[=].action[=].description = "Pathology / Molecular Pathology"
* action[=].action[=].code = $SCT#168456004 "Gross pathology request (procedure)"
* action[=].action[=].code = $SCT#275640004 "Refer to pathology laboratory (procedure)"
* action[=].action[=].code = $SCT#708179009 "Molecular pathology service (qualifier value)"
* action[=].action[=].relatedAction.actionId = "diagnosis-assurance"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].relatedAction.actionId = "tumor-staging"
* action[=].action[=].relatedAction.relationship = #before-start
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