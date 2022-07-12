#Using the R package 'ckanr'
#For more information, refer to the documentation 
#https://cran.r-project.org/web/packages/ckanr/ckanr.pdf
#
#To use these commands, you must install R and the package ckanr and be a 
#registered user of mapMECFS 
#All API queries are subject to the limitations of your user account role. 
#
#To use these commands, you must insert your personal API Token in the command 
#options indicated by "API-TOKEN-HERE" 

#install package 'ckanr' 
install.packages("ckanr")

#load package 'ckanr' 
library(ckanr)


package_list(url='https://www.mapmecfs.org', key="API-TOKEN-HERE")
package_list_current(url='https://www.mapmecfs.org', key="API-TOKEN-HERE")
tag_list(url='https://www.mapmecfs.org', key="API-TOKEN-HERE")
package_show(id='me-cfs-and-ifs-case-control-rna-expression-study-on-monozygotic-twins-gse16059',url='https://www.mapmecfs.org', key="API-TOKEN-HERE")
package_search(q='case-control',url='https://www.mapmecfs.org', key="API-TOKEN-HERE")


#As an alternative, you can set the options for URL and API TOKEN at the 
#beginning of your R session and run the same commands

ckanr_setup(url='https://www.mapmecfs.org', key='API-TOKEN-HERE')

package_list()
package_list_current()
tag_list()
package_show(id='me-cfs-and-ifs-case-control-rna-expression-study-on-monozygotic-twins-gse16059')
package_search(q='case-control')




