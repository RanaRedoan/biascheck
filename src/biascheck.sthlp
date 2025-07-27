{smcl}
{* *! version 1.0}{...}
{hline}
help for {bf:biascheck} {right:Generate enumerator bias reports}
{hline}

{title:Title}

{p 4 4 2}
{bf:biascheck} - Generate enumerator bias reports for categorical variables, particularly Likert-scale questions

{title:Syntax}

{p 4 4 2}
{cmd:biascheck} {it:varname} {cmd:,} {cmdab:enum:(varname)} [{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Required}
{synopt:{cmdab:enum:(varname)}}Enumerator identifier variable (e.g., interviewer ID){p_end}

{syntab:Options}
{synopt:{cmdab:format:(%fmt)}}Display format for proportions (default %4.2f){p_end}
{synoptline}
{p2colreset}{...}

{title:Description}

{p 4 4 2}
{cmd:biascheck} identifies potential enumerator bias in survey responses, particularly for ordinal or Likert-scale questions (e.g., "Strongly Agree" to "Strongly Disagree"). Enumerators (interviewers) may unintentionally influence respondents, leading to skewed distributions.

{p 4 4 2}
This command generates a frequency distribution table, showing how each enumerator's responses deviate from the overall trend. Researchers can use this to:

{p 6 6 2}
• Detect interviewers who may be over- or under-reporting certain responses

{p 6 6 2}
• Assess data quality before analysis

{p 6 6 2}
• Train enumerators to reduce bias in future surveys

{title:Sample Output}

{cmd}
--------------------------------------------------------------------------
Enumerator   Highly      Agree       Neutral     Disagree    Highly
             Agree                                           Disagree
------------ ----------- ----------- ----------- ----------- ------------
Enum 1       0.50        0.25        0.00        0.00        0.25
Enum 2       1.00        0.00        0.00        0.00        0.00
Enum 3       0.00        0.00        0.50        0.50        0.00
--------------------------------------------------------------------------
{txt}

{title:Interpretation}

{p 4 4 2}
• {bf:Enum 1} has a balanced distribution

{p 4 4 2}
• {bf:Enum 2} shows extreme bias (all respondents "Highly Agree")

{p 4 4 2}
• {bf:Enum 3} avoids extreme responses but leans toward "Neutral" and "Disagree"
{bf:Enum 3}

{title:Examples}

{p 4 4 2}{bf:Basic usage:}{p_end}
{phang2}{cmd: biascheck satisfaction_level, enum(interviewer_id)}{p_end}


{title:Author}

{p 4 4 2}
Md. Redoan Hossain Bhuiyan{p_end}
{p 4 4 2}
Email: {browse "mailto:redoanhossain630@gmail.com":redoanhossain630@gmail.com}{p_end}

{title:Also see}

{p 4 4 2}
Online: {help optcounts}, {help codebookgen}, {help exportopenended}, {help inputcorrection}{p_end}
