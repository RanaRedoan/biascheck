*******************************************************
* Demonstration of biascheck: Enumerator Bias Detection
* Author: Md. Redoan Hossain Bhuiyan
* Email: redoanhossain630@gmail.com
*******************************************************

* Clear existing data
clear all

* Load example dataset
* Replace this with your actual dataset
use "survey_data.dta", clear

*----------------------------------------
* Run biascheck on a Likert-scale variable
*----------------------------------------
* Basic usage
biascheck satisfaction_level, by(interviewer_id)

*******************************************************
* End of example.do
*******************************************************

