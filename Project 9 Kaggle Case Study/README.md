<h1 align='center'><ins>DOCUMENTATION</ins></h1>
<br>
<p><strong><ins>Description</ins> :</strong> The market research team at AdRight is assigned the task to identify the profile of the typical customer for each treadmill product 
  offered by CardioGood Fitness. The market research team decides to investigate whether there are differences across the product lines with respect to customer characteristics. 
  The team decides to collect data on individuals who purchased a treadmill at a CardioGoodFitness retail store during the prior three months. The data are stored in the 
  CardioGoodFitness.csv file. The team identifies the following customer variables to study: product purchased, TM195, TM498, or TM798; gender; age, in years;education, 
  in years; relationship status, single or partnered; annual household income ($); average number of times the customer plans to use the treadmill each week; average number 
  of miles the customer expects to walk/run each week; and self-rated fitness on an 1-to-5 scale, where 1 is poor shape and 5 is excellent shape. Perform descriptive analytics 
  to create a customer profile for each CardioGood Fitness treadmill product line.</p>

<p><strong><ins>Dataset Information</ins> :</strong> cardiogoodfitness.csv: The csv contains data related to customers who have purchased different model from 
  Cardio Good Fitness : <ul>
    •	Product: treadmill product model (TM195, TM498, TM798).<br>
    •	Age: age of customers in years.<br>
    •	Gender: gender of customers (Male/Female).<br>
    •	Education: customers’ education in years.<br>
    •	Marital Status: customers’ marital status (Partnered/Single).<br>
    •	Usage: average number of times the customer plans to use the treadmill each week.<br>
    •	Fitness: self-rated fitness on an 1-to-5 scale, where 1 is poor shape and 5 is excellent shape.<br>
    •	Income: customers’ annual income.<br>
    •	Miles: average number of miles the customer expects to walk/run each week.</ul></p>
    
   <p><strong><ins>Objective</ins> :</strong> <ul>
  •	Come up with a customer profile (characteristics of a customer) of the different products.<br>
  •	Based on the data we have to generate a set of insights and recommendations that will help the company in targeting new customers.
  </ul></p>
  <hr>
 
 <p><strong><ins>My Questions</ins> :</strong> <uL>
•	Which is the most preferable model?<br>
•	What is the marital status, age, education and income of our customers?<br>
•	The majority of our customers are male or female?<br>
•	How fit are our customers?<br>
•	Is there a relation between model and gender?<br>
•	Is there a relation between model and education?<br>
•	Is there a relation between model and marital status?<br>
•	Is there a relation between model and fitness?<br>
•	Is there a relation between model and income?<br>
•	Is there a relation between model and usage?<br>
•	Is there a relation between Age, Income, Usage and model?<br>
•	Can we predict the number of miles our customers walk/run each week?<br>
  </ul></p>
  <hr>
  
 <p><strong><ins>Code and Resources Used</ins> :</strong><br>
  <strong>Python:</strong> 3.7.4<br>
  <strong>Packages:</strong> Pandas, Numpy, Matplotlib, Seaborn, SkLearn<br>
  <strong>Case Study:</strong> <a href='https://www.kaggle.com/saurav9786/cardiogoodfitness'>https://www.kaggle.com/saurav9786/cardiogoodfitness</a></p>
  <hr>
  
  <p><strong><ins>Steps</ins> :</strong> <ul>
  <li>I imported the data using pandas.</li>
	<li>I checked for missing values and duplicated ones. I also checked the unique values of each variable, because there are many columns that must have specific values.
	<li>I examined the data using matplotlib and seaborn. My insights are presented at bellow.
	<li>I used sklearn to predict the Miles, using linear regression. The dependent variables are Usage, Fitness and Income. I standardized these variables because of the 
    difference of their data ranges. The model is : Miles= 104.71696020447106+ 21.59603016∙Usage+ 25.23610032∙Fitness+ 3.72088266∙Income , with adjusted R^2=75.5% .</li>
  </p>
  <hr>
  
 <p><strong><ins>Conclusions</ins> :</strong> <ul>
  <li><strong>TM195:</strong> This model is the most preferable, 44.4% of our customers bought this model. The majority of our customers have low income and education 
    between 14 and 16 years. It is equally prefered by men and women, while most of women are partnered. These customers have an average self rated fitness and use this 
    model 3 times per week.</li>
  <li><strong>TM498:</strong> This model represents the 33.3% of our sales. It is mainly prefered by men who are partnered. Our customers have lower income, education 
    between 14 and 16 years,they have an average fintness and use this model 3 times per week.</li>
  <li><strong>TM798:</strong> This model represents the 22.2% of our sales. It is mainly prefered by men who are partnered. These customers have higher income, higher 
    education in years, they have better fitness than the previous groups of customers. They usually walk/run more than 4 times per week.</li></ul></p>
    
  <p><strong><ins>Recomendations</ins> :</strong> <ul>
  <li>TM195 and TM498 have been bought by customers with lower income. We need to take this in consideration for our next marketing campaign.</li>
  <li>TM798 is mainly used by customers with higher fitness levels and higher income. Moreover they use it more than 4 times per week, which means they might be athletes.</li>
  <li>We need to attract more female customers. Since TM195 is equally prefered by men and women, we can use this model to attract more female customers.</li></ul></p>
    

 
