-- Task: Write a SQL query to retrieve all records from the health_dataset table.
select * from health_dataset

--Task: Count the total number of records in the health_dataset table.
select count(*) as total_records from health_dataset

-- Task:List basic demographic information such as Person_ID, Age, Gender, and Country for all individuals.
select Person_ID,Age,Gender, Country from health_dataset

--Task: Find all early wakers where Early_Walker is equal to 1 i.e. True annd 0 i.e false .
select count(*) as total_early_walker from health_dataset where Early_Waker = 1
select count(*) as total_non_early_walker from health_dataset where Early_Waker = 0

--Task:Show people older than 60 and categorize them based on their wellness category i.e. Excellent.
select Person_ID, Age, Wellness_Category from health_dataset where Age > 60 and Wellness_Category='Excellent'

--Task: Count the total number of males and females
select count(*) as total_female from health_dataset where Gender='Female'
select count(*) as total_male from health_dataset where Gender='Male'

--Task: Calculate the average sleep duration in hours for all individuals in the dataset.
select Round(AVG(Sleep_Duration_Hours),0) as avg_sleep_duration  from health_dataset 

--Task: Find the top 10 individuals with the highest health scores
select top 10 gender,health_score from health_dataset order by health_score desc

--Task : Retrieve the exercise frequency per week for individuals who exercise more than 4 times a week, along with gender and occupation.
select gender,occupation, Exercise_Frequency_Per_Week from health_dataset where Exercise_Frequency_Per_Week >4

--Task: Find the average stress level for each occupation in the dataset.
select occupation,round(avg(stress_level),0) as avg_stress_level from health_dataset group by occupation
