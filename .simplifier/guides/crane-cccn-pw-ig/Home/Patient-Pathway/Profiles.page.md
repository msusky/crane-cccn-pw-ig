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

The following FHIR Profiles represent to building blocks used to create the CraNE CCCN lung cancer patient pathway. They conists of the [CraNE CCCN Pathway](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway/) profile which acts as top level container for possible pathway strategies. Stategies can be used to represent different manifestations of the patient pathway according to commonly agreed on or recommended treatment guidelines. The [CraNE CCCN Pathway Process Flow](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Process_Flow/) profile represents the flow-based (and only) pathway strategy according to the BPMN model of the lung cancer patient pathway. A strategy consists of activities, e.g. diagnostic or treatment measures, which are arranged in a specific order according to the BPMN model. Those activities are represented using the [CraNE CCCN Pathway Activity](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Activity/). An activity might require clinical information to be performed or yield clinical information as result. The [CraNE CCCN Pathway Document Object Requirement](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Document_Object_Requirement/) and [CraNE CCCN Pathway Document Object](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Document_Object/) are used to represent such input or output requirements. To provide a statement regarding the quality of the activities performed by a CCCN between the admission and discharge of a patient, quality indicators are defined using the [CraNE CCCN Quality Indicator Definition](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Quality_Indicator_Definition/) profile and reported as part of an activity using the [CraNE CCCN Report Quality Indicator Definition](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Report_Quality_Indicator_Definition/) profile.

| Name | Title | Description |
|:-|:-|:-|
| [CraNE_CCCN_Pathway](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway/) | CraNE CCCN Pathway | The profile for the CraNE Comprehensive Cancer Care Network Pathway |
| [CraNE_CCCN_Pathway_Process_Flow](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Process_Flow/) | CraNE CCCN Pathway Process Flow | The profile for the CraNE Comprehensive Cancer Care Network Pathway Process Flow |
| [CraNE_CCCN_Pathway_Activity](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Activity/) | CraNE CCCN Pathway Activity | The profile for the CraNE Comprehensive Cancer Care Network Pathway Activity |
| [CraNE_CCCN_Pathway_Document_Object_Requirement](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Document_Object_Requirement/)| CraNE CCCN Pathway Document Object Requirement | The profile for the CraNE Comprehensive Cancer Care Network Pathway Document Object Requirement |
| [CraNE_CCCN_Pathway_Document_Object](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Pathway_Document_Object/) | CraNE CCCN Pathway Document Object | The profile for the CraNE Comprehensive Cancer Care Network Pathway Document Object |
| [CraNE_CCCN_Quality_Indicator_Definition](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Quality_Indicator_Definition/) | CraNE CCCN Quality Indicator Definition | The profile for the CraNE Comprehensive Cancer Care Network Quality Indicator Definition |
| [CraNE_CCCN_Report_Quality_Indicator_Definition](https://simplifier.net/crane-cccn-pw-ig/CraNE_CCCN_Report_Quality_Indicator_Definition/) | CraNE CCCN Report Quality Indicator Definition | The profile for the CraNE Comprehensive Cancer Care Network Report Quality Indicator Definition |

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