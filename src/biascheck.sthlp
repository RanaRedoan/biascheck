{smcl}
{* 03jul2024}{...}
{hline}
help for {hi:biascheck}
{hline}

{title:Title}

{p 4 4 2}
{bf:biascheck} - Generate enumerator bias reports for categorical variables

{title:Syntax}

{p 8 15 2}
{cmd:biascheck} {varname} , {cmd:enum(}{varname}{cmd:)} 

{title:Description}

{p 4 4 2}
{cmd:biascheck} is designed to identify potential bias in enumerator responses, particularly for scale-type questions commonly found in surveys. These perception-based questions are prone to enumerator bias, where individual enumerators may influence responses inconsistently. This command generates a table displaying the distribution of response options across enumerators, revealing trends that highlight potential bias, enabling researchers to assess and address inconsistencies in data collection effectively.

{title:Options}

{phang}
{cmd:enum(}{varname}{cmd:)} specifies the enumerator identifier variable (required).

{title:Examples}

{p 4 4 2}
Basic usage:{p_end}
{phang2}{cmd:. biascheck satisfaction_label, enum(interviewer_name)}{p_end}

{title:Author}

{p 4 4 2}
Md. Redoan Hossain Bhuiyan{p_end}
{p 4 4 2}
Email: redoanhossain630@gmail.com{p_end}
{p 4 4 2}
Whatsapp: +8801675735811{p_end}

{title:Also see}

{p 4 4 2}
Online: {help optcounts}, {help putexcel}
