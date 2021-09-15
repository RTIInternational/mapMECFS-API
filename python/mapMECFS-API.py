# -*- coding: utf-8 -*-
"""
Python script and commands to access mapMECFS (https://mapmecfs.org/) data via the API

The user will need to retrieve their API key from their mapMECFS user profile page
The user will enter their personal API key in place of the text "API-KEY-HERE"

The user will need to install the ckanapi (https://github.com/ckan/ckanapi) python module
CKAN documentation of the API in a general context is available at https://github.com/ckan/ckanapi
The following commands provide mapMECFS specific queries which an authorized user will be to perform.
"""

# Import the ckanapi module
from ckanapi import RemoteCKAN

# API call of the mapMECFS portal. Please make sure to retrieve your personal API key from your mapMECFS user profile page
mapmecfs = RemoteCKAN('https://www.mapmecfs.org', apikey = 'API-KEY-HERE')

# Use the 'package_search' action to retrieve a list (as a dictionary ['dict'] object) of all of the datasets you has access to. 
# Note when 'include_private' option is 'True' all datasets (private and public) are displayed. While when 'include_private' option is 'False' only public datasets will be displayed.
datasets = mapmecfs.call_action('package_search', {'include_private': True})

# Use the 'current_package_list_with_resources' to retrieve a list of all datasets, their metadata and resources included within it.
packageResources = mapmecfs.call_action('current_package_list_with_resources')

# Use the 'tag_list' action to retrieve the list of tags associated with at least one dataset on mapMECFS
tags = mapmecfs.call_action('tag_list')

# Use the 'package_show' action to retrieve all of the metadata associated with the listed dataset id (the id is the complete title of the dataset.
# A generalized version (no specific dataset queried) and specific dataset example is shown below. 
# For the generalized example, replace 'DATASET-ID-HERE' with the desired dataset ID.
datasetMetadata_general = mapmecfs.call_action('package_show', {'id': 'DATASET-ID-HERE'})
datasetMetadata = mapmecfs.call_action('package_show', {'id': 'me-cfs-and-ifs-case-control-rna-expression-study-on-monozygotic-twins-gse16059'})

# Use the 'package_search' action to conduct a dataset search of 'case-control'. 
# The action will return a dictionary with each dataset as an element of the dictionary.
# A generalized version (no specific query) and specific query is shown below.
# For the generalized example, replace 'QUERY-HERE' with the desired query.
searchExample_general = mapmecfs.call_action('package_search', {'q': 'QUERY-HERE'})
searchExample = mapmecfs.call_action('package_search', {'q': 'case-control'})
