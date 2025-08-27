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
{cmd:biascheck} {it:varname} {cmd:,} {cmdab:by:(varname)} [{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Required}
{synopt:{cmdab:by:(varname)}}Grouping variable, usually interviewer ID{p_end}

{syntab:Options}
{synopt:{cmdab:format:(%fmt)}}Display format for proportions (default %4.2f){p_end}
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

{cmd}
--------------------------------------------------------------------------
Interviewer   Highly      Agree       Neutral     Disagree    Highly
              Agree                                           Disagree
------------  ----------- ----------- ----------- ----------- ------------
Int. 1        0.50        0.25        0.00        0.00        0.25
Int. 2        1.00        0.00        0.00        0.00        0.00
Int. 3        0.00        0.00        0.50        0.50        0.00
--------------------------------------------------------------------------
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
Online: {help optcounts}, {help codebookgen}, {help exportopenended}, {help inputcorrection}{p_end}
