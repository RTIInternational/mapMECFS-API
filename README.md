# mapMECFS-API
This repository contains scripts in the python, R, and curl command to access mapMECFS data via the API. 


## About mapMECFS
The mapMECFS website serves as the omics data sharing portal for Myalgic Encephalomyelitis/Chronic Fatigue Syndrome (ME/CFS) research, created as part of the NIH funded ME/CFS Network. 
This website enables researchers to gain a broader view of ME/CFS by:
- Bringing together the data that researchers have collected across the multiple systems affected by ME/CFS
- Providing a dynamic navigation portal to search across these domains
- Facilitating the integration of complementary data types to offer a new, more complete picture of the disorder

mapMECFS is available to all researchers at https://www.mapmecfs.org/.


## mapMECFS-API Repository
This repository provides detailed documentation of the mapMECFS API to access and search data stored on mapMECFS. Documentation is provided in the curl, python, and R languages.

### Available API Queries
Examples in each programming languages are given for the following activities on mapMECFS.
- List of datasets on mapMECFS
- List of datasets and their metadata on mapMECFS
- Retrieve a list of all tags used on mapMECFS
- Retrieve metadata for a particular dataset on mapMECFS
- Search a particular tag used on mapMECFS
- Search data on mapMECFS according to a specific query

### Retrieving API Key
All API requests to mapMECFS require a user specific API key. Follow these simple steps to retrieve your API key.
1. After logging in, authorized users will be able to navigate to their user account page by finding the link near the top right corner.
![alt text](https://github.com/RTIInternational/mapMECFS-API/blob/main/API-Key/UserProfile.png)
2. On your user account page, your API key is found in the left column. Only you can see your API key.
![alt text](https://github.com/RTIInternational/mapMECFS-API/blob/main/API-Key/API_key.png)


## mapMECFS Portal Implementation
mapMECFS has been implemented using the CKAN framework (https://ckan.org/). Our custom created plugins for [advanced authentication](https://github.com/RTIInternational/ckanext-advancedauth), [search terms](https://github.com/RTIInternational/ckanext-searchterms), and [summary statistics](https://github.com/RTIInternational/ckanext-summarystats) are publicly available.


## Help and Feature Requests
Please contact the mapMECFS support team (mapmecfs@rti.org) with any bug reports, site assistance, and feature requests.


## Citation
The mapMECFS manuscript is available at https://translational-medicine.biomedcentral.com/articles/10.1186/s12967-021-03127-3
