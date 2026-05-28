# Indian-Air-Quality-Analysis


## Project Overview
Analysis of India's air quality trends using CPCB data 
across 26 cities (2015–2020). Built an interactive 
Power BI dashboard tracking AQI trends, seasonal 
pollution patterns and city-wise comparisons.

## Tech Stack
- Data Source: Kaggle (CPCB)
- Cleaning: Microsoft Excel Online
- Storage & Querying: Microsoft Fabric Lakehouse + SQL
- Visualization: Power BI Web

## Dashboard Features
- AQI trend over time
- City-wise average AQI comparison  
- Month-wise pollution patterns
- AQI category distribution
- Slicers: City | Year

## Dataset Overview
- **Source:** Kaggle (CPCB India)
- **Cities Covered:** 26 Indian cities
- **Total Records (after cleaning):** 24,307 rows
- **Columns:** City, Date, PM2_5, PM10, AQI, AQI_Bucket

---

##  Key Findings



**Top 5 Most Polluted Cities (Avg AQI):**
| Rank | City | Avg AQI | Category |
|------|------|---------|----------|
| 1 | Ahmedabad | 292 | Poor |
| 2 | Delhi | 252 | Poor |
| 3 | Patna | 236 | Poor |
| 4 | Gurugram | 219 | Poor |
| 5 | Lucknow | 215 | Poor |

**Top 5 Cleanest Cities (Avg AQI):**
| Rank | City | Avg AQI | Category |
|------|------|---------|----------|
| 1 | Aizawl | 35 | Good |
| 2 | Shillong | 54 | Satisfactory |
| 3 | Coimbatore | 73 | Satisfactory |
| 4 | Thiruvananthapuram | 76 | Satisfactory |
| 5 | Ernakulam | 92 | Satisfactory |

**Key Insight:** North India (Avg AQI: 215) is 
2x more polluted than South India (Avg AQI: 104)

---

###  Seasonal Pollution Pattern

| Month | Avg AQI | Season |
|-------|---------|--------|
| December | 215 | Winter — Most Polluted |
| January | 213 | Winter |
| November | 212 | Winter |
| July | 105 | Monsoon — Least Polluted |
| August | 106 | Monsoon |
| September | 108 | Monsoon |

**Key Insight:** Pollution is nearly 2x higher 
in winter vs monsoon months. Winter cold air 
traps pollutants close to ground. 
Monsoon rains wash pollutants away.

- Delhi recorded 711 dangerous days (AQI > 300) — 
  highest among all cities
- 20 out of 26 cities experienced at least one 
  dangerous pollution day
- Patna and Ahmedabad both hit maximum AQI of 500
- On bad days, Ahmedabad's average AQI was 398 — 
  most severe among all cities
### Year-wise National Trend
- National Avg AQI dropped from 199 (2015) to 110 (2020)
- Consistent year-on-year improvement even before COVID
- 2020 lockdown caused sharpest single-year drop (143→110)
- Note: Data coverage expanded from 1,775 days (2015) to 
  6,915 days (2019) — more cities added over time, 
  which may partially explain the declining average
### Critical Numbers
- **3,675 days** recorded AQI above 300 (Very Poor/Severe)
- **543 rows** had AQI exceeding 500 (impossible values — 
  likely sensor errors, flagged for removal)
- **PM10 missing** in 7,086 rows (~28% of dataset)
- **PM2.5 missing** in 678 rows (~3% of dataset)

---

## Data Cleaning Notes
- changed date column format from text to date 
- Renamed column PM2.5 → PM2_5 for SQL compatibility
- Removed empty ghost columns caused by Excel formatting
- Applied listwise deletion for rows missing 
  PM2.5, PM10 and AQI simultaneously
- Flagged 543 rows with AQI > 500 as sensor anomalies

## Author
Prakhar | BTech CSE | GEC Ajmer
