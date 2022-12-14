-- Create table with covid deaths
CREATE TABLE deaths (
	iso_code VARCHAR(50),
	continent VARCHAR(50),
	location VARCHAR(50),
	date DATE,
	population BIGINT,
	total_cases INT,
	new_cases INT,
	new_cases_smoothed NUMERIC(15,3),
	total_deaths INT,
	new_deaths INT,
	new_deaths_smoothed NUMERIC(15,3),
	total_cases_per_million NUMERIC(15,3),
	new_cases_per_million NUMERIC(15,3),
	new_cases_smoothed_per_million NUMERIC(15,3),
	total_deaths_per_million NUMERIC(15,3),
	new_deaths_per_million NUMERIC(15,3),
	new_deaths_smoothed_per_million NUMERIC(15,3),
	reproduction_rate NUMERIC(15,3),
	icu_patients INT,
	icu_patients_per_million NUMERIC(15,3),
	hosp_patients INT,
	hosp_patients_per_million NUMERIC(15,3),
	weekly_icu_admissions INT,
	weekly_icu_admissions_per_million NUMERIC(15,3),
	weekly_hosp_admissions INT,
	weekly_hosp_admissions_per_million NUMERIC(15,3)
)

COPY deaths
FROM 'data/CovidDeaths.csv' 
DELIMITER ',' 
CSV HEADER;


-- Create table with covid vaccinations
CREATE TABLE vaccinations (
	iso_code VARCHAR(50),
	continent VARCHAR(50),
	location VARCHAR(50),
	date DATE,
	total_tests BIGINT,
	new_tests INT,
	total_tests_per_thousand NUMERIC(15,3),
	new_tests_per_thousand NUMERIC(15,3),
	new_tests_smoothed NUMERIC(15,3),
	new_tests_smoothed_per_thousand NUMERIC(15,3),
	positive_rate NUMERIC(15,3),
	tests_per_case NUMERIC(15,3),
	tests_units VARCHAR(50),
	total_vaccinations BIGINT,
	people_vaccinated BIGINT,
	people_fully_vaccinated NUMERIC(15,3),
	total_boosters BIGINT,
	new_vaccinations INT,
	new_vaccinations_smoothed NUMERIC(15,3),
	total_vaccinations_per_hundred NUMERIC(15,3),
	people_vaccinated_per_hundred NUMERIC(15,3),
	people_fully_vaccinated_per_hundred NUMERIC(15,3),
	total_boosters_per_hundred NUMERIC(15,3),
	new_vaccinations_smoothed_per_million NUMERIC(15,3),
	new_people_vaccinated_smoothed NUMERIC(15,3),
	new_people_vaccinated_smoothed_per_hundred NUMERIC(15,3),
	stringency_index NUMERIC(15,3),
	population_density NUMERIC(15,3),
	median_age NUMERIC(15,3),
	aged_65_older NUMERIC(15,3),
	aged_70_older NUMERIC(15,3),
	gdp_per_capita NUMERIC(15,3),
	extreme_poverty NUMERIC(15,3),
	cardiovasc_death_rate NUMERIC(15,3),
	diabetes_prevalence NUMERIC(15,3),
	female_smokers NUMERIC(15,3),
	male_smokers NUMERIC(15,3),
	handwashing_facilities NUMERIC(15,3),
	hospital_beds_per_thousand NUMERIC(15,3),
	life_expectancy NUMERIC(15,3),
	human_development_index NUMERIC(15,3),
	excess_mortality_cumulative_absolute NUMERIC(15,3),
	excess_mortality_cumulative NUMERIC(15,3),
	excess_mortality NUMERIC(15,3),
	excess_mortality_cumulative_per_million NUMERIC(15,3)
)

COPY vaccinations
FROM 'data/CovidVaccinations.csv' 
DELIMITER ',' 
CSV HEADER;

