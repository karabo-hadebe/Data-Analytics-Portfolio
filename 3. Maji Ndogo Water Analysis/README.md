# Maji Ndogo Water Analysis Power BI

## Project Overview

This project uses Microsoft Power BI to analyse water access challenges across five provinces in the Maji Ndogo dataset: Akatsi, Amanzi, Hawassa, Kilimani and Sokoto.

The analysis examines water-source availability, queue times, water quality, crime incidents and proposed infrastructure improvements to support data-informed planning.

## Project Objectives

- Analyse the distribution of water sources and the populations they serve.
- Investigate water collection queues and waiting times.
- Assess water contamination and quality.
- Explore crime patterns associated with water collection.
- Evaluate proposed infrastructure improvements and their estimated budgets.

## Tools and Skills

**Tool:** Microsoft Power BI

**Skills demonstrated:**
- Data modelling and table relationships
- DAX calculated columns and measures
- Data aggregation and analysis
- Interactive dashboards and slicers
- Data visualisation and storytelling
- Infrastructure planning analysis

## Dashboard Analysis

### 1. National Overview

This dashboard examines the distribution of water sources across Maji Ndogo, including wells, shared taps, household taps, broken household taps and rivers.

It compares rural and urban locations, populations served by different source types, and water-source availability across towns.

![National Overview](screenshots/National%20Overview.png)

### 2. Queue Analysis

This dashboard investigates water collection waiting times by day and hour, alongside the recorded demographic composition of queues.

Saturday stands out as a particularly high-demand day, highlighting the importance of addressing waiting times at shared water sources.

![Queue Analysis](screenshots/Queue%20Analysis.png)

### 3. Pollution Analysis

This dashboard examines water-quality testing results and identifies sources affected by chemical and biological contamination.

The displayed results indicate:

- Clean: 28.28%
- Chemical contamination: 40.80%
- Biological contamination: 30.92%

These findings highlight the importance of water treatment and infrastructure improvements.

![Pollution Analysis](screenshots/Pollution%20Analysis.png)

### 4. Crime Analysis

This dashboard explores reported crimes associated with water collection, including harassment, theft, sexual assault and other recorded offences.

It compares incidents by crime type, province, gender category, day and hour to identify patterns relevant to water collection safety.

![Crime Analysis](screenshots/Crime%20Analysis.png)

### 5. Infrastructure Improvement Planning

This dashboard evaluates proposed infrastructure interventions, including:

- Installing reverse osmosis (RO) filters
- Installing UV and RO filtration systems
- Installing public taps
- Repairing infrastructure
- Drilling wells

It compares improvement quantities, population figures and estimated budgets across provinces.

![Improvement Planning](screenshots/Improvement%20Planning.png)

## Key Findings

- The improvement-planning dashboard reports **34% current basic water access** under the model's classification.
- The expected improvement indicator displays **66%** in the captured overview. This represents a scenario-based potential improvement, not an achieved result.
- The proposed infrastructure improvement budget totals approximately **$146.74 million**.
- Sokoto has the largest estimated provincial improvement budget at approximately **$40.15 million**, followed by Kilimani at approximately **$39.25 million**.
- Approximately **71.72%** of the displayed water-quality test results fall into chemical or biological contamination categories.
- Queue waiting times are particularly high on Saturdays.

## Methodology

The Power BI data model connects water-source records with location, visits, pollution, crime and infrastructure planning data.

DAX was used to calculate water-access classifications, average queue times and population-based access measures.

A source was classified as providing basic access if it was a clean well, a household tap, or a shared tap with an average waiting time below 30 minutes.

The expected improvement measure estimates the population potentially gaining basic access through selected planned interventions, assuming those interventions successfully meet basic-access requirements.

## Limitations

The expected improvement percentage is a scenario-based estimate rather than a verified forecast or measured outcome.

Actual improvements depend on successful implementation, water-treatment effectiveness, changes in waiting times and post-project verification.

The analysis is based on the supplied dataset and its recorded categories.

## How to View the Project

1. Open the Power BI `.pbix` file in Microsoft Power BI Desktop.
2. Navigate between the report pages.
3. Use the available slicers to explore provincial comparisons and proposed improvements.
4. Refer to the dashboard screenshots for a quick overview.

## Conclusion

This project demonstrates how Power BI can transform related datasets into meaningful insights about water access, public safety, water quality and infrastructure planning.

It highlights the use of data modelling, DAX, interactive visualisations and analytical reasoning to support evidence-based decision-making.