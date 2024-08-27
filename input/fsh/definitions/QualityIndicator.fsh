RuleSet: QualityIndicatorKind(type, scoring, improvement)
* improvementNotation = $measure-improvement-notation#{improvement}
* scoring = $measure-scoring#{scoring}
* type = $measure-type#{type}

RuleSet: QualityIndicatorKindDefaults
* insert QualityIndicatorKind(outcome, ratio, increase)

RuleSet: PrimaryCaseDefinition
* definition = "
  SoS for Lung Cancer Care, 1.2. Multidisciplinary cooperation (p.11 et seq.)
  - All patients with newly diagnosed Lung Cancer,
  - Pathology report must be available (ICD C34.0-34.9)
  - The time of counting is the time of the pathological confirmation of diagnosis
  - Patients with no pathological confirmation of diagnosis may be counted if (all of the following apply):
    - Solitary pulmonary nodule, suspected malignoma
    - FDG-PET positive
    - Documented size progression over course of time (at least 8 weeks)
    - High risk for patients through pathological confirmation
    - Presentation tumour board and indication radiotherapy without pathological confirmation
    - Time of counting is date of presentation tumour board
  - One primary case with synchronous treatment of Lung Cancer (independent of the side or lobe localisation)
  - Two primary cases with metachronous treatment, if these occur on different sides (not counted as a second primary case is the occurrence in different lobes on the same side)
"

//Instance: crane-cccn-quality-indicator-library
//InstanceOf: Library
//Title: "Library for Quality Indicators"
//Usage: 

// Quality Indicator #01 Definitions
Instance: crane-cccn-report-quality-indicator-01
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #01"
Description: "QI 1: Percentage of patients having surgery for a NSCLC discussed in a postoperative tumour board/MDT meeting"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_01"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-01)

Instance: crane-cccn-quality-indicator-01
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #01"
Description: "QI 1: Percentage of patients having surgery for a NSCLC discussed in a postoperative tumour board/MDT meeting"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_01"
* group.population.code = #numerator
* group.population.description = "Patients of the denominator with discussion in a postoperative tumour board/MDT meeting"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsDiscussedInPostoperativeTumorBoard"
* group.stratifier.code = #denominator
* group.stratifier.description = "All patients with NSCLC and surgery"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "PatientswithDiagnosedNSCLCAndSurgery"
* relatedArtifact.type = #citation
* relatedArtifact.url = "https://doi.org/10.21037/jtd.2018.04.56"
* relatedArtifact.citation = "Beck, N., F. Hoeijmakers, E.M. Wiegman, H.J.M. Smit, F.M. Schramel, et al., Lessons learned from the Dutch Institute for Clinical Auditing: the Dutch model for quality assurance in lung cancer treatment. J Thorac Dis, 2018. 10(Suppl 29): p. S3472-S3485"

// Quality Indicator #02 Definitions
Instance: crane-cccn-report-quality-indicator-02
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #02"
Description: "QI 2: Pretherapeutic tumour board/MDT meeting"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_02"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-02)

Instance: crane-cccn-quality-indicator-02
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #02"
Description: "QI 2: Pretherapeutic tumour board/MDT meeting"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_02"
* clinicalRecommendationStatement = "Target value: ≥ 90%"
* definition = "Pretherapeutic: before surgery and/or systemic treatment"
* group.population.code = #numerator
* group.population.description = "Patients of the denominator presented in the pretherapeutic tumour board/MDT meeting"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsPresentedInPretherapeuticMDT"
* group.stratifier.code = #denominator
* group.stratifier.description = "All LC patients with first diagnosis of Lung Cancer"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "AllFirstDiagnosisLungCancerPatients"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #03 Definitions
Instance: crane-cccn-report-quality-indicator-03
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #03"
Description: "QI 3: PD-L1 testing for NSCLC in stage III with radiochemotherapy"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_03"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-03)

Instance: crane-cccn-quality-indicator-03
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #03"
Description: "QI 3: PD-L1 testing for NSCLC in stage III with radiochemotherapy"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_03"
* clinicalRecommendationStatement = "Target value: ≥ 75%"
* group.population.code = #numerator
* group.population.description = "Primary cases of the denominator with PD-L1 testing before starting radio-chemotherapy"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PrimaryCasesWithPDL1TestingBeforeRadiochemotherapy"
* group.stratifier.code = #denominator
* group.stratifier.description = "Primary cases with NSCLC stage III with radio-chemotherapy"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "PrimaryCasesWithNSCLCStageIIIAndRadiochemotherapy"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #04 Definitions
Instance: crane-cccn-report-quality-indicator-04
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #04"
Description: "QI 4: Pathological Diagnosis"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_04"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-04)

Instance: crane-cccn-quality-indicator-04
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #04"
Description: "QI 4: Pathological Diagnosis"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_04"
* clinicalRecommendationStatement = "Target value: 80%"
* group.population.code = #numerator
* group.population.description = "Number of patients with Lung Cancer who have a pathological diagnosis (including following surgical resection)"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsWithPathologicalDiagnosis"
* group.stratifier.code = #denominator
* group.stratifier.description = "All patients with Lung Cancer, excluding patients who refuse investigations or surgical resection"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "AllLungCancerPatientsExcludingRefusals"
* relatedArtifact.type = #citation
* relatedArtifact.url = "https://www.isdscotland.org/Health-Topics/Quality-Indicators/Cancer-QPI"
* relatedArtifact.citation = "Public Health Scotland, Information Services Division (ISD). Lung Cancer. Quality Performance Indicators. Patients diagnosed between January 2016 and December 2018. [online] 2020; [visited: 06.01.2022]"

// Quality Indicator #05 Definitions
Instance: crane-cccn-report-quality-indicator-05
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #05"
Description: "QI 5: Pathological Diagnosis – tumour subtype"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_05"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-05)

Instance: crane-cccn-quality-indicator-05
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #05"
Description: "QI 5: Pathological Diagnosis – tumour subtype"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_05"
* clinicalRecommendationStatement = "Target value: 90%"
* definition = "Tumour subtype: squamous/nonsquamous"
* group.population.code = #numerator
* group.population.description = "Number of patients with a pathological diagnosis of NSCLC who have a tumour subtype identified"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsWithNSCLCTumourSubtypeIdentified"
* group.stratifier.code = #denominator
* group.stratifier.description = "All patients with a pathological diagnosis of NSCLC"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "AllPatientsWithNSCLCDiagnosis"
* relatedArtifact.type = #citation
* relatedArtifact.url = "https://www.isdscotland.org/Health-Topics/Quality-Indicators/Cancer-QPI"
* relatedArtifact.citation = "Public Health Scotland, Information Services Division (ISD). Lung Cancer. Quality Performance Indicators. Patients diagnosed between January 2016 and December 2018. [online] 2020; [visited: 06.01.2022]"

// Quality Indicator #06 Definitions
Instance: crane-cccn-report-quality-indicator-06
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #06"
Description: "QI 6: Pre-treatment diagnosis"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_06"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-06)

Instance: crane-cccn-quality-indicator-06
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #06"
Description: "QI 6: Pre-treatment diagnosis"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_06"
* clinicalRecommendationStatement = "Target value: 95%"
* group.population.code = #numerator
* group.population.description = "Number of patients who receive curative treatment (radical radiotherapy, radical chemoradiotherapy or surgical resection) that have a cytological/histological diagnosis prior to treatment"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsWithCytologicalOrHistologicalDiagnosisPriorToCurativeTreatment"
* group.stratifier.code = #denominator
* group.stratifier.description = "All patients with Lung Cancer who receive curative treatment (radical radiotherapy, radical chemoradiotherapy or surgical resection), excluding patients who refuse investigations"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "AllLungCancerPatientsReceivingCurativeTreatmentExcludingRefusals"
* relatedArtifact.type = #citation
* relatedArtifact.url = "https://www.isdscotland.org/Health-Topics/Quality-Indicators/Cancer-QPI"
* relatedArtifact.citation = "Public Health Scotland, Information Services Division (ISD). Lung Cancer. Quality Performance Indicators. Patients diagnosed between January 2016 and December 2018. [online] 2020; [visited: 06.01.2022]"

// Quality Indicator #07 Definitions
Instance: crane-cccn-report-quality-indicator-07
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #07"
Description: "QI 7: Surgical expertise: Number of lung resections"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_07"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-07)

Instance: crane-cccn-quality-indicator-07
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #07"
Description: "QI 7: Surgical expertise: Number of lung resections"
Usage: #definition
* insert Header
* insert QualityIndicatorKind(outcome,continuous-variable,increase)
* name = "CraNE_CCCN_QI_07"
* clinicalRecommendationStatement = "Target value: ≥ 75 (Validated in ECC Lung Cancer Centres)"
* definition = "Anatomical resections: anatomical segment resection, lobectomy, pneumectomy, bronchio- and angioplasty"
* group.population.code = #measure-population
* group.population.description = "Surgical expertise, Number of anatomical resections (ICD-10 C34.0-9, C78.0)"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "NumberOfAnatomicalResections"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #08 Definitions
Instance: crane-cccn-report-quality-indicator-08
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #08"
Description: "QI 8: Videothoracoscopic (VATS) and robotic-assisted (RATS) anatomical resections"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_08"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-08)

Instance: crane-cccn-quality-indicator-08
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #08"
Description: "QI 8: Videothoracoscopic (VATS) and robotic-assisted (RATS) anatomical resections"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_08"
* definition = "Anatomical resections: anatomical segment resection, lobectomy, pneumectomy, bronchio- and angioplasty"
* group.population.code = #numerator
* group.population.description = "Operations of the denominator performed videothoracoscopically (VATS) and/or robot-assisted (RATS)"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "VATSOrRATSAnatomicalResections"
* group.stratifier.code = #denominator
* group.stratifier.description = "Surgical primary cases (number of anatomical resections ICD-10 C34.0-9, C78.0)"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "SurgicalPrimaryCasesWithAnatomicalResections"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #09 Definitions
Instance: crane-cccn-report-quality-indicator-09
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #09"
Description: "QI 9: Local R0 resections in stages IA/B and IIA/B"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_09"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-09)

Instance: crane-cccn-quality-indicator-09
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #09"
Description: "QI 9: Local R0 resections in stages IA/B and IIA/B"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_09"
* clinicalRecommendationStatement = "Target value: ≥ 95%"
* group.population.code = #numerator
* group.population.description = "Primary cases of the denominator with (local) R0 resections after completion of surgical treatment"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PrimaryCasesWithLocalR0Resections"
* group.stratifier.code = #denominator
* group.stratifier.description = "Surgical primary cases in stages IA/B and IIA/B with anatomical lung resection"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "SurgicalPrimaryCasesWithAnatomicalLungResectionInStagesIABAndIIAB"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #10 Definitions
Instance: crane-cccn-report-quality-indicator-10
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #10"
Description: "QI 10: Local R0 resections in stages IIIA/B"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_10"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-10)

Instance: crane-cccn-quality-indicator-10
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #10"
Description: "QI 10: Local R0 resections in stages IIIA/B"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_10"
* clinicalRecommendationStatement = "Target value: ≥ 85%"
* group.population.code = #numerator
* group.population.description = "Primary cases of the denominator with (local) R0 resections after completion of surgical treatment"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PrimaryCasesWithLocalR0ResectionsInStagesIIIAAndIIIB"
* group.stratifier.code = #denominator
* group.stratifier.description = "Surgical primary cases in stages IIIA/B with anatomical lung resection"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "SurgicalPrimaryCasesWithAnatomicalLungResectionInStagesIIIAAndIIIB"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #11 Definitions
Instance: crane-cccn-report-quality-indicator-11
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #11"
Description: "QI 11: Anatomical pulmonary resection for NSCLC stage I/II with a tumour >= 2cm"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_11"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-11)

Instance: crane-cccn-quality-indicator-11
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #11"
Description: "QI 11: Anatomical pulmonary resection for NSCLC stage I/II with a tumour >= 2cm"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_11"
* group.population.code = #numerator
* group.population.description = "Patients of the denominator with anatomical pulmonary resection (no segmentectomy)"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsWithAnatomicalPulmonaryResectionWithoutSegmentectomy"
* group.stratifier.code = #denominator
* group.stratifier.description = "All NSCLC patients stage I/II, with a tumour >= 2cm and resection"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "NSCLCStageIOrIIWithTumorGreaterThanOrEqual2cmAndResection"
* relatedArtifact.type = #citation
* relatedArtifact.citation = "Khorfan, R., D.T. Cooke, R.A. Meguid, L. Backhus, T.K. Varghese, Jr., et al., Institutional factors associated with adherence to quality measures for stage I and II non-small cell lung cancer. J Thorac Cardiovasc Surg, 2021. 162(3): p. 649-660 e8."
* relatedArtifact.url = "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8441990/#R13"

// Quality Indicator #12 Definitions
Instance: crane-cccn-report-quality-indicator-12
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #12"
Description: "QI 12: Surgical Lymph Node Staging >=10 Lymph nodes at resection"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_12"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-12)

Instance: crane-cccn-quality-indicator-12
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #12"
Description: "QI 12: Surgical Lymph Node Staging >=10 Lymph nodes at resection"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_12"
* group.population.code = #numerator
* group.population.description = "Patients of the denominator with lymph node staging >=10 lymph nodes"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsWithLymphNodeStagingGreaterThanOrEqual10"
* group.stratifier.code = #denominator
* group.stratifier.description = "All NSCLC patients stage Ia-IIB with surgical resection including lymph node staging"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "NSCLCStageIaIIBWithSurgicalResectionAndLymphNodeStaging"
* relatedArtifact.type = #citation
* relatedArtifact.citation = "Odell, D.D., J. Feinglass, K. Engelhardt, S. Papastefan, S.L. Meyerson, et al., Evaluation of adherence to the Commission on Cancer lung cancer quality measures. J Thorac Cardiovasc Surg, 2019. 157(3): p. 1219-1235."

// Quality Indicator #13 Definitions
Instance: crane-cccn-report-quality-indicator-13
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #13"
Description: "QI 13: Stage II-III NSCLC patients receiving chemo-radiation"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_13"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-13)

Instance: crane-cccn-quality-indicator-13
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #13"
Description: "QI 13: Stage II-III NSCLC patients receiving chemo-radiation"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_13"
* group.population.code = #numerator
* group.population.description = "Receiving concomitant or sequential chemo-radiation"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "StageIIOrIIINSCLCWithChemoRadiation"
* group.stratifier.code = #denominator
* group.stratifier.description = "NSCLC patients in stage II-III that did not receive surgery"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "StageIIOrIIINSCLCWithoutSurgery"
* relatedArtifact.type = #citation
* relatedArtifact.citation = "Andreano, A., M.G. Valsecchi, A.G. Russo, S. Siena, and G. Lombardy Lung Cancer Working, Indicators of guideline-concordant care in Lung Cancer defined with a modified Delphi method and piloted in a cohort of over 5,800 cases. Arch Public Health, 2021. 79(1): p. 12."

// Quality Indicator #14 Definitions
Instance: crane-cccn-report-quality-indicator-14
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #14"
Description: "QI 14: Adjuvant cisplatin-based chemotherapy for stages II-IIIA1/2"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_14"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-14)

Instance: crane-cccn-quality-indicator-14
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #14"
Description: "QI 14: Adjuvant cisplatin-based chemotherapy for stages II-IIIA1/2"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_14"
* clinicalRecommendationStatement = "Plausibility corridor: < 15%"
* group.population.code = #numerator
* group.population.description = "Primary cases of the denominator with cisplatin-based chemotherapy"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PrimaryCasesWithCisplatinBasedChemotherapy"
* group.stratifier.code = #denominator
* group.stratifier.description = "R0 and lymph node-resected NSCLC primary cases with anatomical lung resection (NSCLC, stage II-IIIA1/2, with ECOG 0/1)"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "R0LymphNodeResectedNSCLCWithAnatomicalLungResection"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #15 Definitions
Instance: crane-cccn-report-quality-indicator-15
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #15"
Description: "QI 15: Stereotactic Ablative Radiotherapy (SABR) in inoperable stage I Lung Cancer"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_15"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-15)

Instance: crane-cccn-quality-indicator-15
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #15"
Description: "QI 15: Stereotactic Ablative Radiotherapy (SABR) in inoperable stage I Lung Cancer"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_15"
* clinicalRecommendationStatement = "Target value: 35%"
* group.population.code = #numerator
* group.population.description = "Number of patients with stage I Lung Cancer not undergoing surgery who receive SABR"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "StageILungCancerPatientsReceivingSABR"
* group.stratifier.code = #denominator
* group.stratifier.description = "All patients with stage I Lung Cancer not undergoing surgery, excluding patients with small cell Lung Cancer (SCLC), patients who refuse SABR, and patients who die prior to treatment"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "StageILungCancerPatientsNotUndergoingSurgery"
* relatedArtifact.type = #citation
* relatedArtifact.url = "https://www.isdscotland.org/Health-Topics/Quality-Indicators/Cancer-QPI"
* relatedArtifact.citation = "Public Health Scotland, Information Services Division (ISD). Lung Cancer. Quality Performance Indicators. Patients diagnosed between January 2016 and December 2018. [online] 2020; [visited: 06.01.2022]"

// Quality Indicator #16 Definitions
Instance: crane-cccn-report-quality-indicator-16
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #16"
Description: "QI 16: Interventional Bronchoscopy (Thermal Procedures and Stenting)"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_16"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-16)

Instance: crane-cccn-quality-indicator-16
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #16"
Description: "QI 16: Interventional Bronchoscopy (Thermal Procedures and Stenting)"
Usage: #definition
* insert Header
* insert QualityIndicatorKind(outcome, continuous-variable, increase)
* name = "CraNE_CCCN_QI_16"
* clinicalRecommendationStatement = "Target value: ≥ 10/y"
* definition = "Interventional bronchsopy (1): bronchoscopic dilation of the trachea with insertion of a synthetic splint (stent)"
* definition = "Interventional bronchsopy (2): bronchoscopic dilation of the trachea with insertion of a metal splint (stent)"
* definition = "Interventional bronchsopy (3): bronchoscopic excision or destruction of diseased tissue"
* group.population.code = #measure-population
* group.population.description = "Interventional bronchoscopy (thermal procedures and stenting) for each service provider."
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "InterventionalBronchoscopyProcedures"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #17 Definitions
Instance: crane-cccn-report-quality-indicator-17
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #17"
Description: "QI 17: Chemo-immunotherapy in SCLC"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_17"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-17)

Instance: crane-cccn-quality-indicator-17
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #17"
Description: "QI 17: Chemo-immunotherapy in SCLC"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_17"
* group.population.code = #numerator
* group.population.description = "Primary cases of the denominator with combination PD-L1 antibody therapy (atezolizumab or durvalumab)"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "ChemoImmunotherapyWithPDL1Antibody"
* group.stratifier.code = #denominator
* group.stratifier.description = "Primary cases with SCLC stage IV and chemotherapy (platinum/etoposide)"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "SCLCStageIVWithChemotherapy"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #18 Definitions
Instance: crane-cccn-report-quality-indicator-18
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #18"
Description: "QI 18: Clinical Trials and Research Study Access"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_18"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-18)

Instance: crane-cccn-quality-indicator-18
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #18"
Description: "QI 18: Clinical Trials and Research Study Access"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* name = "CraNE_CCCN_QI_18"
* clinicalRecommendationStatement = "Target value: ≥ 5%"
* group.population.code = #numerator
* group.population.description = "Number of patients with Lung Cancer enrolled in an interventional clinical trial or translational research"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PatientsEnrolledInClinicalTrialOrResearch"
* group.stratifier.code = #denominator
* group.stratifier.description = "All patients with Lung Cancer"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "AllLungCancerPatients"
* relatedArtifact.type = #citation
* relatedArtifact.url = "https://www.isdscotland.org/Health-Topics/Quality-Indicators/Cancer-QPI"
* relatedArtifact.citation = "Public Health Scotland, Information Services Division (ISD). Lung Cancer. Quality Performance Indicators. Patients diagnosed between January 2016 and December 2018. [online] 2020; [visited: 06.01.2022]"

// Quality Indicator #19 Definitions
Instance: crane-cccn-report-quality-indicator-19
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #19"
Description: "QI 19: Post-operative bronchial stump/anastomotic insufficiency"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_19"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-19)

Instance: crane-cccn-quality-indicator-19
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #19"
Description: "QI 19: Post-operative bronchial stump/anastomotic insufficiency"
Usage: #definition
* insert Header
* insert QualityIndicatorKind(outcome, ratio, decrease)
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_19"
* clinicalRecommendationStatement = "Plausibility corridor: < 0,01%; Target value: ≤ 5%"
* group.population.code = #numerator
* group.population.description = "Primary cases of the denominator with post-operative bronchial stump/anastomotic insufficiency"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "PostOperativeBronchialStumpAnastomoticInsufficiency"
* group.stratifier.code = #denominator
* group.stratifier.description = "Surgical primary cases for each department"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "SurgicalPrimaryCasesForDepartment"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"

// Quality Indicator #20 Definitions
Instance: crane-cccn-report-quality-indicator-20
InstanceOf: CraNE_CCCN_Report_Quality_Indicator_Definition
Title: "Report Quality Indicator #20"
Description: "QI 20: Maintenance therapy after definitive radiochemotherapy"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Report_QI_20"
* extension[qualityIndicatorDefinition].valueCanonical = Canonical(crane-cccn-quality-indicator-20)

Instance: crane-cccn-quality-indicator-20
InstanceOf: CraNE_CCCN_Quality_Indicator_Definition
Title: "Quality Indicator #20"
Description: "QI 20: Maintenance therapy after definitive radiochemotherapy"
Usage: #definition
* insert Header
* insert QualityIndicatorKindDefaults
* insert PrimaryCaseDefinition
* name = "CraNE_CCCN_QI_20"
* group.population.code = #numerator
* group.population.description = "Primary cases of the denominator with durvalumab therapy started"
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "DurvalumabTherapyStarted"
* group.stratifier.code = #denominator
* group.stratifier.description = "Primary cases after definitive concomitant radiochemotherapy without progression and with PD-L1 expression of ≥ 1% on tumour cells"
* group.stratifier.criteria.language = #text/cql
* group.stratifier.criteria.expression = "DefinitiveRadiochemotherapyWithPdl1Expression"
* relatedArtifact.type = #citation
* relatedArtifact.url = "http://ecc-cert.org/wp-content/uploads/2022/10/lcc_annualreport-2022-A1_220601.pdf"
* relatedArtifact.citation = "European Cancer Centre Certification Programme Annual Report Lung Cancer (2022)"