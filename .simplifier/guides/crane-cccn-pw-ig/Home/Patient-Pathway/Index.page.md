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

This page summarizes the developed patient pathway with a focus on the main activities to provide a basic understanding for the lung cancer pathway stages. A more detailed description is found in the [Report on Task 6.4.2 describing the lung cancer patient pathway templated accompanied with patient-centred practices](https://crane4health.eu/wp-content/uploads/2024/07/CraNE_WP6_Sub-Task-6.4.2._Report.pdf).

<div style="background-color: #81368d"><a href="https://raw.githubusercontent.com/msusky/crane-cccn-pw-ig/master/implementation-guides/images/lung-cancer-pathway-collapsed.png" target="_blank"><img width="100%" src="https://raw.githubusercontent.com/msusky/crane-cccn-pw-ig/master/implementation-guides/images/lung-cancer-pathway-collapsed.png"/></a></div>

The main stages and activities of the lung cancer patient pathway template is outlined and detailed below, encompassing the following major phases: CCCN entry, staging diagnostics, treatment planning, treatment, follow-up/end-of-life care, and the conclusion of CCCN care.

### Screening

Screening is integrated as a key interface, marking one of the starting points of the lung cancer patient pathway care in CCCNs. The patient pathway working group agreed to include screening not as a phase of the patient pathway itself but as an interface starting point. This decision was made because screening addresses not only lung cancer patients but also a broader population. Consequently, screening is depicted in light grey in the patient pathway, accompanied by additional information and references.

### CCCN Entry

The lung cancer patient pathway has four entry points. These are, as represented in the figure,

- patients with symptoms,
- patients with histologically confirmed lung cancer,
- citizens with positive lung cancer screening results, and
- patients with suspicion of secondary metastases or recurrence.

### Staging Diagnostics

After patient consultation, the phase of “staging diagnostics” is entered. An overview of this phase is given in the figure. If no lung cancer was confirmed, the patient will be discharged from CCCN care. Otherwise, the pathway continues with treatment planning.

### Treatment Planning

After staging diagnostics, the phase of “treatment planning” is entered. This phase includes two sub-pathways – for the “standard tumorboard (TB) meeting” and for the “molecular tumorboard (MTB) meeting”. There is a patient consultation after the diagnosis which should include shared decision-making. Overall, four quality indicators are allocated to the steps of this pathway phase.

### Treatment

After treatment planning, the patient pathway for lung cancer patients continues with the phase of “treatment”. It includes the actual treatment together with supportive care activities and an early integration of palliative care (if needed), as well as rehabilitation activities. Altogether, there are 18 quality indicators allocated to the steps of the treatment phase.

### Follow-Up, End-of-Life Care and End of CCCN Care

After treatment, the patient pathway for lung cancer patients continues with the phase of follow-up or end-of-life care. Follow-up care should be performed according to national or European cancer follow-up guidelines/ recommendations. This phase includes one quality indicator.

<!--

## Role Model

|Role|Description|
|:-|:-|
|CCCN Unit|tbd|
|Patient|Lung cancer patient|

### CCCN Unit

A CCCN unit is an integrated network of cancer care providers that collaborate to offer high-quality, multidisciplinary cancer treatment, research, and education. These units focus on improving patient outcomes through standardized care, advancing cancer research via clinical trials and translational research, providing continuous professional and patient education, and facilitating data sharing and collaboration among network members. They aim to enhance the quality and accessibility of cancer care while promoting best practices and supporting health policy advocacy.

### Patient

A patient in a CCCN is a person with postive lung cancer screening results or a person with symptoms or histologically confirmed lung cancer. For more information with regard to symptoms and confirmation see **TBD** guidelines.


## Related Documents and Data

TBD: Short description of activities, events, documents, etc of the patient pathway process model

## Quality Indicators

Quality indicators for guideline-based cancer healthcare ensure that care is delivered according to the highest standards, improving patient outcomes and satisfaction. These indicators encompass process adherence, outcomes, infrastructure, compliance, accessibility, and patient engagement. By monitoring and improving these areas, healthcare providers can enhance the overall quality and effectiveness of cancer care. The table below shows the quality indicators specified as part of the patient pathway.

|No.|Name|Specification|
|:-|:-|:-|
|1|Percentage of patients having surgery for a NSCLC discussed in a postoperative TB/MDT meeting|*Numerator*: Patients of the denominator with discussion in a postoperative TB/MDT meeting<br> *Denominator*: All patients with NSCLC and surgery|
-->

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