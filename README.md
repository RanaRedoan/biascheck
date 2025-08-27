# biascheck: Enumerator Bias Detection in Survey Data

`biascheck` is a Stata program that helps detect **enumerator bias** in categorical survey responses, particularly Likert-scale questions.  
It allows researchers to quickly assess whether enumerators (interviewers) are unintentionally influencing responses, producing skewed distributions.

---

## Instalation
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

Optional
--------
format(%fmt)    Display format for proportions (default %4.2f)
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

```text
--------------------------------------------------------------------------
Enumerator   Highly      Agree       Neutral     Disagree    Highly
             Agree                                           Disagree
------------ ----------- ----------- ----------- ----------- ------------
John       0.50        0.25        0.00        0.00        0.25
Mike       1.00        0.00        0.00        0.00        0.00
David      0.00        0.00        0.50        0.50        0.00
--------------------------------------------------------------------------
```

---

## 🧾 Interpretation

- **John** has a balanced distribution  
- **Mike** shows extreme bias (all respondents answered "Highly Agree")  
- **David** avoids extremes but leans toward "Neutral" and "Disagree"  

---

## 🚀 Examples

```stata
* Basic usage: check enumerator bias on a Likert-scale question
biascheck satisfaction_level, by(interviewer_id)

* Change display format for proportions
biascheck trust_government, by(enum_id) format(%5.3f)
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



