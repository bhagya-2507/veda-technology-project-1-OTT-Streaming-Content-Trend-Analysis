# OTT Streaming Content Trend Analysis

**A Data Analytics Project | VEDA Technology — Major Project**

## Project Overview

This project analyzes an OTT streaming content catalog to understand its composition, genre representation, release patterns, country-level contribution, content ratings, and movie runtime.

The objective is to transform raw catalog data into meaningful findings and develop evidence-based recommendations for content strategy.

## Business Objectives

- Compare Movies and TV Shows in the catalog.
- Examine content distribution by release year.
- Identify the most represented genres.
- Analyze content ratings and country-level representation.
- Explore movie runtimes and TV Show season counts.
- Develop three actionable content strategy recommendations.

## Dataset

**Dataset:** Netflix Movies and TV Shows

**Source:** [Netflix Titles Dataset — Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)

The dataset contains catalog metadata such as title, content type, director, country, release year, rating, duration, and genre labels.

Place `netflix_titles.csv` inside the `data/` folder before running the notebook.

## Tools and Technologies

- Python
- Pandas and NumPy
- Matplotlib and Seaborn
- Jupyter Notebook
- SQL with SQLite
- Git and GitHub

## Project Workflow

1. Load and inspect the dataset.
2. Check missing values and duplicate records.
3. Clean relevant fields and extract date and duration features.
4. Perform exploratory data analysis.
5. Create visualizations to examine catalog patterns.
6. Run SQL queries for core aggregations.
7. Document findings and prepare content strategy recommendations.

## Visualizations

The project includes visualizations covering:

1. Movies vs TV Shows
2. Release-year trends
3. Top genres
4. Content ratings
5. Top countries
6. Movie runtime distribution
7. Genre comparison by content type
8. TV Show season distribution
9. Original release-year trend
10. Content addition trend
11. Country–genre heatmap

Charts are saved in the `outputs/` folder when the notebook is executed.

## Key Findings

The analyzed dataset contains 8,807 titles, including 6,131 Movies and 2,676 TV Shows.

Movies represent approximately 69.62% of the catalog, while TV Shows represent approximately 30.38%.

The analysis also examines genre representation, country-level catalog counts, content ratings, and movie runtime. These findings describe catalog composition rather than actual viewing demand.

## Content Strategy Recommendations

1. **Evaluate content mix:** Compare viewing hours, completion rates, and acquisition costs for Movies and TV Shows before making investment decisions.
2. **Investigate genre opportunities:** Compare the performance of highly represented and less represented genres using audience engagement metrics.
3. **Evaluate regional opportunities:** Combine country-level catalog data with viewing hours, language preferences, licensing costs, and regional growth metrics.

## SQL Analysis

The `sql/ott_analysis.sql` file contains queries for:

- Total title counts
- Movies vs TV Shows
- Release-year distribution
- Content ratings
- Movie runtimes
- TV Show seasons
- Content additions by year
- Recent content by type

## Repository Structure

```text
OTT-Streaming-Content-Trend-Analysis/
├── data/
├── notebooks/
├── outputs/
├── sql/
├── report/
├── deployment/
├── README.md
├── requirements.txt
└── .gitignore
```

## How to Run

Install the required packages:

```bash
pip install -r requirements.txt
```

Open the notebook:

```bash
jupyter notebook notebooks/OTT_Content_Trend_Analysis.ipynb
```

Run the notebook cells from top to bottom. Ensure that `data/netflix_titles.csv` is available before execution.

For SQL analysis, run the queries in `sql/ott_analysis.sql` against the SQLite database created by the notebook.

## Limitations

The dataset contains catalog metadata, not actual viewing hours, revenue, customer satisfaction, or acquisition costs. Therefore, the recommendations require validation using audience and business performance data.

## Author

**BHAGYA**

Data Analytics Project — VEDA Technology
