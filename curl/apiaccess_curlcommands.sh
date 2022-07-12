#####################################
#curl commands to access mapMECFS data via the API
#User will need to access via a command-line interface
#User will need to retrieve their API Token from their mapMECFS user profile page
#User will enter their personal API Token in place of the text "API-TOKEN-HERE" in the following commands
#####################################

#List of datasets on mapMECFs
#As an authorized user, use the 'package_list' action function to retrieve a list of all datasets that are accessible to the user.
curl "https://www.mapmecfs.org/api/3/action/package_list" -H "Authorization: API-TOKEN-HERE"

#List of datasets and their metadata on mapMECFS
#As an authorized user, use the 'current_package_list_with_resources' action function to retrieve a list of all datasets that are accessible to the user, their metadata, and included resources.
curl "https://www.mapmecfs.org/api/3/action/current_package_list_with_resources" -H "Authorization: API-TOKEN-HERE"

#Retrieve a list of all tags used on mapMECFS
#As an authorized user, use the 'tag_list' action function to retrieve the list of tags associated with at least one dataset on mapMECFS.
curl "https://www.mapmecfs.org/api/3/action/tag_list" -H "Authorization: API-TOKEN-HERE"

#Retrieve metadata for a particular dataset on mapMECFS
#As an authorized user, use the 'package_show' action function to retrieve all of the metadata associated with a particular dataset ID. The ID is the complete title of the dataset.
curl "https://www.mapmecfs.org/api/3/action/package_show?id=me-cfs-and-ifs-case-control-rna-expression-study-on-monozygotic-twins-gse16059" -H "Authorization: API-TOKEN-HERE"

#Search a particular tag used on mapMECFS
#As an authorized user, use the 'package_search' action function to conduct a dataset search of the term 'case-control'. The action will return a dictionary with each dataset as an element of the dictionary.
curl "https://www.mapmecfs.org/api/3/action/package_search?fq=tags:case-control" -H "Authorization: API-TOKEN-HERE"
