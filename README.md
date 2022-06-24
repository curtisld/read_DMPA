# read_DMPA <br><br>

*Example function call*  <br>
df <- read_DMPA(filename='CLD_DB_MJ_LAKES.xls', path = '//kc.kingcounty.lcl/dnrp/LAB/Reports/')  <br>

*explore data* <br>
unique(df$MATRIX) # typically 2 including LN BLANK WTR  <br>
unique(df$LOCATOR) # typically 9 (now 12 including FFBLANK)  <br>
unique(df$PROJECT) # typically 2 including 421240A  <br>
unique(df$QUALIFIER)  <br> 
unique(df$PARMNAME) #typically 17 (now 18 - E. coli!)  <br>
unique(df$METHOD) #typically 12 (now 13 - E. coli!)  <br>
unique(df$TEXTVALUE)  <br>
