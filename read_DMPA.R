require(readr)

read_DMPA <- function(filename, path = '//kc.kingcounty.lcl/dnrp/LAB/Reports/',...) 
{
  filename = paste(path,filename,sep="")  
  read_delim(filename, col_types = cols(LABSAMPLENUM = col_character(), 
                                        COLLECTDATE = col_datetime(format = "%m/%d/%Y %H:%M:%S"),
                                        TOTAL_SOLIDS = col_double(),
                                        PROJECT = col_character(),
                                        SAMPLE_DEPTH = col_double(),
                                        MDL = col_double(),
                                        RDL = col_double()),
                                        trim_ws = TRUE,
                                        na = c("","NA"),
                                        delim = "\t")
}
