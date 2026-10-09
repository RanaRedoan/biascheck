# biascheck: Enumerator Bias Detection in Survey Data

`biascheck` is a Stata program that helps detect **enumerator bias** in categorical survey responses, particularly Likert-scale questions.  
It allows researchers to quickly assess whether enumerators (interviewers) are unintentionally influencing responses, producing skewed distributions.

---

## Installation
```stata
net install biascheck, from("https://raw.githubusercontent.com/RanaRedoan/biascheck/main") replace
```

---

## 📖 Syntax

```stata
biascheck varname , by(interviewer_variable)
```

---

## 📌 Options

```text
Required
--------
by(varname)   Enumerator identifier variable (e.g., interviewer ID)
```

---

## 📊 Description

`biascheck` identifies potential enumerator bias in survey responses, particularly for **ordinal or Likert-scale questions**  
(e.g., "Strongly Agree" → "Strongly Disagree").  

It generates a frequency distribution table showing how each enumerator’s responses deviate from the overall trend.  

Researchers can use this tool to:  
- Detect interviewers who may be over- or under-reporting certain responses  
- Assess data quality before analysis  
- Train enumerators to reduce bias in future surveys  

---

## 📊 Sample Output

Each column is one answer category, in order: `satisfaction_1` is the first category
(here "Highly Agree"), `satisfaction_2` the second, and so on. Each cell is the share of
that enumerator's respondents who gave that answer; the `Total` row is the whole sample.

```text
Summary statistics: Mean
Group variable: enumerator

enumerator | satisf~1  satisf~2  satisf~3  satisf~4  satisf~5
-----------+--------------------------------------------------
      John |      .5       .25         0         0       .25
      Mike |       1         0         0         0         0
     David |       0         0        .5        .5         0
-----------+--------------------------------------------------
     Total |      .5  .0833333  .1666667  .1666667  .0833333
--------------------------------------------------------------
```

---

## 🧾 Interpretation

- **John** has a balanced distribution  
- **Mike** shows extreme bias (all respondents gave the first answer, "Highly Agree")  
- **David** avoids extremes but leans toward the third and fourth answers ("Neutral" and "Disagree")  

---

## 🚀 Examples

```stata
* Basic usage: check enumerator bias on a Likert-scale question
biascheck satisfaction_level, by(interviewer_id)

* Another question, another enumerator variable
biascheck trust_government, by(enum_id)
```

---

## 🤝 Contribution

Pull requests and suggestions are welcome!  
If you find issues or have feature requests, please open an Issue in the repository.

---

## 📜 Author

Md. Redoan Hossain Bhuiyan  
📧 Email: redoanhossain630@gmail.com  

---

## 📌 License

This project is licensed under the MIT License.



