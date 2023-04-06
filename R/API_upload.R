library(ckanr)
library(devtools)

ckanr_setup(url='https://mapmecfs.org', key='API-TOKEN-HERE')


newPackage = package_create(name = "api-test10",
                            title = "API Test10",
                            data_type = "Gene Expression",
                            owner_org = "rti-international",
                            maintainer = "Ravi Mathur",
                            maintainer_email = "rmathur@rti.org",
                            private = TRUE
)
filePath = "C:/Users/rmathur/Downloads/gene_expression_test_resultFile.tsv"
newResource = resource_create(package_id = '662ca73b-4fda-4216-ae2f-ae0bc6149dcd',
                              name = "Test Gene Expression Profile",
                              description = "Test upload of resource from API",
                              extras = list(resource_file_type = "Results File", format = "TSV"),
                              upload = filePath,
                              rcurl = 'http://mapmecfs.org'
                              )
