connection: "aws_mcdon-02527-cdf"

# include all the views
include: "*.view"

datagroup: aws_mcdon_02527_cdf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_mcdon_02527_cdf_default_datagroup

# - explore: cdf_current_employee_list_regions_master {}

# - explore: cdf_catalog

# - explore: cdf_co_owned_il_restaurants_master

# - explore: cdf_convert

explore: cdf_current_employee_list_il_master {}

# - explore: cdf_electronic_consent_chart_master

# - explore: cdf_employee_list_detailed_release_form_master

# - explore: cdf_stats

# - explore: cdf_table_stats

# - explore: data_dictionary

# - explore: log

# - explore: src_dlvry

# - explore: src_files

# - explore: src_master
