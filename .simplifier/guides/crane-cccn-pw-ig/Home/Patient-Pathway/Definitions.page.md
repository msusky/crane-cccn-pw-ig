<style>
    html, body, header, nav, table * {
        font-family: "Work Sans", sans-serif;
        font-size: 100%;
        line-height: 2em;
    }

    body,
    table * {
        background-color: #cfdbd9 !important;
    }

    footer,
    nav *,
    th,
    .under-construction span,
    .dropdown.open > a:hover {
        color: #cfdbd9 !important;
    }

    h1,
    h2,
    h3,
    nav *,
    th,
    .under-construction span {
        text-transform: uppercase !important;
    }

    footer,
    th,
    nav.navbar {
        background-color: #81368d !important;
    }

    content a,
    h1,
    h2,
    h3,
    nav.navbar a:hover,
    .dropdown-menu *,
    .title *,
    .hl {
        color: #81368d !important;
    }

    .title {
        text-align: center;
    }

    a,
    hl,
    .title *,
    .under-construction span {
        font-weight: bold;
    }

    .hl7-logo a {
        display: none;
    }

    .hl7-logo {
        background-image: url("https://crane4health.eu/wp-content/uploads/2023/01/cropped-cropped-cranelogo.png");
        background-repeat: no-repeat;
        background-size: 86px 70px;
        height: 90px;
    }

    .under-construction {
        width: 100%;
        height: 3em;
        line-height: 3em;
        text-align: center;
        background-color: #da4453;
    }

    .under-construction span {
        vertical-align: middle;
    }

    footer.footer {
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
        height: auto;
        padding: 0;
        margin: 200px 0 0 0;
    }

    footer.footer * {
        height: auto;
        width: auto;
        margin: 10px;
    }
</style>
<!--
<div class="under-construction">
    <span>Disclaimer: This FHIR Implementation Guide is under construction. The content neither can be considered stable nor completed.</span>
</div>
-->

## {{page-title}}

The following definitions represent the CraNE CCCN lung cancer patient pathway according to the BPMN model. The definitions are created using the formerly [introduced FHIR Profiles](https://simplifier.net/guide/crane-cccn-pw-ig/Home/Patient-Pathway/Profiles.page.md) and [FHIR Extensions](https://simplifier.net/guide/crane-cccn-pw-ig/Home/Patient-Pathway/Extensions.page.md).

### Pathway Definitions

|Name|Title|Description|
|:-|:-|:-|
| [CraNE_CCCN_Pathway_Definition](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-plandefinition-crane-cccn-definition-pathway/~overview) | CraNE CCCN Pathway Definition | CraNE Comprehensive Cancer Care Network Pathway Definition |
| [CraNE_CCCN_Pathway_Process_Flow_Definition](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-plandefinition-crane-cccn-definition-process-flow/~overview) | CraNE CCCN Pathway Process Flow Definition | CraNE Comprehensive Cancer Care Network Pathway Process Flow Definition |


### Pathway Activity Definitions

|Name|Title|Description|
|:-|:-|:-|
| [CraNE_CCCN_Pathway_Activity_Screening_Definition](https://simplifier.net/crane-cccn-pw-ig/generated-resources-PlanDefinition-crane-cccn-definition-activity-screening/~overview) | Screening | CraNE Comprehensive Cancer Care Network Pathway Activity Screening Definition |
| [CraNE_CCCN_Pathway_Activity_Patient_Consultation_Definition](https://simplifier.net/crane-cccn-pw-ig/generated-resources-PlanDefinition-crane-cccn-definition-activity-patient-consultation/~overview) | Patient Consultation | CraNE Comprehensive Cancer Care Network Pathway Activity Patient Consultation Definition |
| [CraNE_CCCN_Pathway_Activity_Staging_Diagnostics_Definition](https://simplifier.net/crane-cccn-pw-ig/generated-resources-PlanDefinition-crane-cccn-definition-activity-staging-diagnostics/~overview) | Staging Diagnostics | CraNE Comprehensive Cancer Care Network Pathway Activity Staging Diagnostics Definition |
| [CraNE_CCCN_Pathway_Activity_Treatment_Planning_Definition](https://simplifier.net/crane-cccn-pw-ig/generated-resources-PlanDefinition-crane-cccn-definition-activity-treatment-planning/~overview) | Treatment Planning | CraNE Comprehensive Cancer Care Network Pathway Activity Treatment Planning Definition |
| [CraNE_CCCN_Pathway_Activity_Treatment_Definition](https://simplifier.net/crane-cccn-pw-ig/generated-resources-PlanDefinition-crane-cccn-definition-activity-treatment/~overview) | Treatment | CraNE Comprehensive Cancer Care Network Pathway Activity Treatment Definition |
| [CraNE_CCCN_Pathway_Activity_Follow-Up_Definition](https://simplifier.net/crane-cccn-pw-ig/generated-resources-PlanDefinition-crane-cccn-definition-activity-follow-up/~overview) | Follow-Up | CraNE Comprehensive Cancer Care Network Pathway Activity Follow-Up Definition |
| [CraNE_CCCN_Pathway_Activity_End-Of-Care_Definition](https://simplifier.net/crane-cccn-pw-ig/generated-resources-PlanDefinition-crane-cccn-definition-activity-end-of-care/~overview) | End of CCCN Care | CraNE Comprehensive Cancer Care Network Pathway Activity End-Of-Care Definition |

### Report Quality Indicator Definitions

|Name|Title|Description|
|:-|:-|:-|
| [CraNE_CCCN_Report_QI_01](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-01/~overview) | Report Quality Indicator #01 | QI 1: Percentage of patients having surgery for a NSCLC discussed in a postoperative tumour board/MDT meeting |
| [CraNE_CCCN_Report_QI_02](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-02/~overview) | Report Quality Indicator #02 | QI 2: Pretherapeutic tumour board/MDT meeting |
| [CraNE_CCCN_Report_QI_03](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-03/~overview) | Report Quality Indicator #03 | QI 3: PD-L1 testing for NSCLC in stage III with radiochemotherapy |
| [CraNE_CCCN_Report_QI_04](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-04/~overview) | Report Quality Indicator #04 | QI 4: Pathological Diagnosis |
| [CraNE_CCCN_Report_QI_05](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-05/~overview) | Report Quality Indicator #05 | QI 5: Pathological Diagnosis – tumour subtype |
| [CraNE_CCCN_Report_QI_06](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-06/~overview) | Report Quality Indicator #06 | QI 6: Pre-treatment diagnosis |
| [CraNE_CCCN_Report_QI_07](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-07/~overview) | Report Quality Indicator #07 | QI 7: Surgical expertise: Number of lung resections |
| [CraNE_CCCN_Report_QI_08](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-08/~overview) | Report Quality Indicator #08 | QI 8: Videothoracoscopic (VATS) and robotic-assisted (RATS) anatomical resections |
| [CraNE_CCCN_Report_QI_09](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-09/~overview) | Report Quality Indicator #09 | QI 9: Local R0 resections in stages IA/B and IIA/B |
| [CraNE_CCCN_Report_QI_10](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-10/~overview) | Report Quality Indicator #10 | QI 10: Local R0 resections in stages IIIA/B |
| [CraNE_CCCN_Report_QI_11](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-11/~overview) | Report Quality Indicator #11 | QI 11: Anatomical pulmonary resection for NSCLC stage I/II with a tumour >= 2cm |
| [CraNE_CCCN_Report_QI_12](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-12/~overview) | Report Quality Indicator #12 | QI 12: Surgical Lymph Node Staging >=10 Lymph nodes at resection |
| [CraNE_CCCN_Report_QI_13](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-13/~overview) | Report Quality Indicator #13 | QI 13: Stage II-III NSCLC patients receiving chemo-radiation |
| [CraNE_CCCN_Report_QI_14](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-14/~overview) | Report Quality Indicator #14 | QI 14: Adjuvant cisplatin-based chemotherapy for stages II-IIIA1/2 |
| [CraNE_CCCN_Report_QI_15](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-15/~overview) | Report Quality Indicator #15 | QI 15: Stereotactic Ablative Radiotherapy (SABR) in inoperable stage I Lung Cancer |
| [CraNE_CCCN_Report_QI_16](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-16/~overview) | Report Quality Indicator #16 | QI 16: Interventional Bronchoscopy (Thermal Procedures and Stenting) |
| [CraNE_CCCN_Report_QI_17](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-17/~overview) | Report Quality Indicator #17 | QI 17: Chemo-immunotherapy in SCLC |
| [CraNE_CCCN_Report_QI_18](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-18/~overview) | Report Quality Indicator #18 | QI 18: Clinical Trials and Research Study Access |
| [CraNE_CCCN_Report_QI_19](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-19/~overview) | Report Quality Indicator #19 | QI 19: Post-operative bronchial stump/anastomotic insufficiency |
| [CraNE_CCCN_Report_QI_20](https://simplifier.net/crane-cccn-pw-ig/resources-ActivityDefinition-crane-cccn-report-quality-indicator-20/~overview) | Report Quality Indicator #20 | QI 20: Maintenance therapy after definitive radiochemotherapy |

### Quality Indicator Definitions

|Name|Title|Description|
|:-|:-|:-|
| [CraNE_CCCN_QI_01](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-01/~overview) | Quality Indicator #01 | QI 1: Percentage of patients having surgery for a NSCLC discussed in a postoperative tumour board/MDT meeting |
| [CraNE_CCCN_QI_02](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-02/~overview) | Quality Indicator #02 | QI 2: Pretherapeutic tumour board/MDT meeting |
| [CraNE_CCCN_QI_03](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-03/~overview) | Quality Indicator #03 | QI 3: PD-L1 testing for NSCLC in stage III with radiochemotherapy |
| [CraNE_CCCN_QI_04](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-04/~overview) | Quality Indicator #04 | QI 4: Pathological Diagnosis |
| [CraNE_CCCN_QI_05](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-05/~overview) | Quality Indicator #05 | QI 5: Pathological Diagnosis – tumour subtype |
| [CraNE_CCCN_QI_06](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-06/~overview) | Quality Indicator #06 | QI 6: Pre-treatment diagnosis |
| [CraNE_CCCN_QI_07](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-07/~overview) | Quality Indicator #07 | QI 7: Surgical expertise: Number of lung resections |
| [CraNE_CCCN_QI_08](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-08/~overview) | Quality Indicator #08 | QI 8: Videothoracoscopic (VATS) and robotic-assisted (RATS) anatomical resections |
| [CraNE_CCCN_QI_09](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-09/~overview) | Quality Indicator #09 | QI 9: Local R0 resections in stages IA/B and IIA/B |
| [CraNE_CCCN_QI_10](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-10/~overview) | Quality Indicator #10 | QI 10: Local R0 resections in stages IIIA/B |
| [CraNE_CCCN_QI_11](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-11/~overview) | Quality Indicator #11 | QI 11: Anatomical pulmonary resection for NSCLC stage I/II with a tumour >= 2cm |
| [CraNE_CCCN_QI_12](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-12/~overview) | Quality Indicator #12 | QI 12: Surgical Lymph Node Staging >=10 Lymph nodes at resection |
| [CraNE_CCCN_QI_13](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-13/~overview) | Quality Indicator #13 | QI 13: Stage II-III NSCLC patients receiving chemo-radiation |
| [CraNE_CCCN_QI_14](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-14/~overview) | Quality Indicator #14 | QI 14: Adjuvant cisplatin-based chemotherapy for stages II-IIIA1/2 |
| [CraNE_CCCN_QI_15](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-15/~overview) | Quality Indicator #15 | QI 15: Stereotactic Ablative Radiotherapy (SABR) in inoperable stage I Lung Cancer |
| [CraNE_CCCN_QI_16](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-16/~overview) | Quality Indicator #16 | QI 16: Interventional Bronchoscopy (Thermal Procedures and Stenting) |
| [CraNE_CCCN_QI_17](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-17/~overview) | Quality Indicator #17 | QI 17: Chemo-immunotherapy in SCLC |
| [CraNE_CCCN_QI_18](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-18/~overview) | Quality Indicator #18 | QI 18: Clinical Trials and Research Study Access |
| [CraNE_CCCN_QI_19](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-19/~overview) | Quality Indicator #19 | QI 19: Post-operative bronchial stump/anastomotic insufficiency |
| [CraNE_CCCN_QI_20](https://simplifier.net/crane-cccn-pw-ig/fsh-generated-resources-measure-crane-cccn-quality-indicator-20/~overview) | Quality Indicator #20 | QI 20: Maintenance therapy after definitive radiochemotherapy |

<footer class="footer">
<div class="eu-logo"><img src="https://crane4health.eu/wp-content/uploads/2022/10/cofounded-eu-logo.png"/></div>
<div>
<h4>Project Management Team</h4>
<p>
National Institute of Public Health<br>
of the Republic of Slovenia (NIJZ)<br>
Trubarjeva 2, SI-1000 Ljubljana<br>
Email: crane@nijz.si<br>
Tel:  +386 1 330 2697
</p>
</div>
<div>
<h4>Dissemination Team</h4>
<p>
Regional Health Authority of Attica (1st YPE)<br>
3, Zacharof Str., 11521, Athens, Greece<br>
Email: crane.dissemination@1dype.gov.gr<br>
Tel: +30 2132010552-474-483<br>
Website: www.1dype.gov.gr
</p>
</div>
</footer>