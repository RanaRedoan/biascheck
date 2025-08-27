*! version 1.4 03jul2025 
*! Author:  Md. Redoan Hossain Bhuiyan
*! Email:   redoanhossain630@gmail.com
*! Linkedin: www.linkedin.com/in/mdredoanhossainbhuiyan
*! Github:   https://github.com/RanaRedoan

program define biascheck
    version 17
    
    syntax varname, ///
        BY(varname)     
        
    * Get variable metadata
    local varlab : variable label `varlist'
    if `"`varlab'"' == "" local varlab "`varlist'"
    local vallab : value label `varlist'
    
    * Create dummies for existing values
    qui levelsof `varlist', local(values)
    local i 0
    foreach val of local values {
        local ++i
        gen `varlist'_`i' = `varlist' == `val' if !missing(`varlist')
        local catlab`i' = cond(`"`vallab'"' != "", `"`: label `vallab' `val''"', "`val'")
        local dvars `dvars' `varlist'_`i'
    }
    
    * Generate and show results
    tabstat `dvars', stat(mean) by(`by')
    
    * Clean up
    capture drop `dvars'

end
