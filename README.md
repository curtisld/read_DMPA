# read_DMPA

*Example function call*
df <- read_DMPA(filename='CLD_DB_MJ_LAKES.xls', path = '//kc.kingcounty.lcl/dnrp/LAB/Reports/')

*explore data*
unique(df$MATRIX) # typically 2 including LN BLANK WTR
unique(df$LOCATOR) # typically 9 (now 12 including FFBLANK)
unique(df$PROJECT) # typically 2 including 421240A
unique(df$QUALIFIER)
unique(df$PARMNAME) #typically 17 (now 18 - E. coli!)
unique(df$METHOD) #typically 12 (now 13 - E. coli!)
unique(df$TEXTVALUE)


*TEXTVALUE no longer empty, but instead has spaces when there is no text*
tmp <- subset(df,!is.na(df$TEXTVALUE))
tmp <- subset(df,grepl("  ",df$TEXTVALUE))
tmp <- subset(df,grepl(" ",df$TEXTVALUE))
