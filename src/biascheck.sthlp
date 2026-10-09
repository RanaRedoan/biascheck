{smcl}
{* *! version 1.4 03jul2025}{...}
{hline}
help for {bf:biascheck} {right:Generate interviewer bias reports}
{hline}

{title:Title}

{p 4 4 2}
{bf:biascheck} — Generate interviewer bias reports for categorical variables, particularly Likert-scale questions

{title:Syntax}

{p 4 4 2}
{cmd:biascheck} {it:varname} {cmd:,} {cmdab:by:(varname)}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Required}
{synopt:{cmdab:by:(varname)}}Grouping variable, usually interviewer ID{p_end}

{synoptline}
{p2colreset}{...}

{title:Description}

{p 4 4 2}
{cmd:biascheck} identifies potential interviewer bias in survey responses, particularly for ordinal or Likert-scale questions (e.g., "Strongly Agree" to "Strongly Disagree"). 

{p 4 4 2}
Interviewers may unintentionally influence respondents, leading to skewed distributions. This command helps researchers detect such patterns by generating frequency distribution tables by interviewer.

{p 4 4 2}
Researchers can use this to:

{p 6 6 2}
• Detect interviewers who may be over- or under-reporting certain responses

{p 6 6 2}
• Assess data quality before analysis

{p 6 6 2}
• Train enumerators to reduce bias in future surveys

{title:Sample Output}

{p 4 4 2}
Each column is one answer category, in order ({it:varname}{cmd:_1} is the first category, {it:varname}{cmd:_2} the second, ...). Each cell is the share of that interviewer's respondents who gave that answer; the Total row is the whole sample.

{cmd}
  interviewer | satisf~1  satisf~2  satisf~3  satisf~4  satisf~5
  ------------+--------------------------------------------------
       Int. 1 |      .5       .25         0         0       .25
       Int. 2 |       1         0         0         0         0
       Int. 3 |       0         0        .5        .5         0
  ------------+--------------------------------------------------
        Total |      .5  .0833333  .1666667  .1666667  .0833333
{txt}

{title:Interpretation}

{p 4 4 2}
• {bf:Int. 1} shows a balanced distribution

{p 4 4 2}
• {bf:Int. 2} shows extreme bias (all respondents answered "Highly Agree")

{p 4 4 2}
• {bf:Int. 3} avoids extremes but leans toward "Neutral" and "Disagree"

{title:Examples}

{p 4 4 2}{bf:Basic usage:}{p_end}
{phang2}{cmd: biascheck satisfaction_level, by(interviewer_id)}{p_end}

{title:Author}

{p 4 4 2}
Md. Redoan Hossain Bhuiyan{p_end}
{p 4 4 2}
Email: {browse "mailto:redoanhossain630@gmail.com":redoanhossain630@gmail.com}{p_end}
{p 4 4 2}
LinkedIn: {browse "www.linkedin.com/in/mdredoanhossainbhuiyan"}{p_end}
{p 4 4 2}
GitHub: {browse "https://github.com/RanaRedoan"}{p_end}

{title:Also see}

{p 4 4 2}
Online: {help optcounts}, {help gencodebook}, {help exportopenended}, {help inputcorrection}{p_end}
