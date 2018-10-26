view: cdf_current_employee_list_il_master {
  sql_table_name: dbo.CDF_Current_Employee_List_IL_Master ;;

  dimension: anomaly {
    type: string
    sql: ${TABLE}.Anomaly ;;
  }

  dimension_group: birth_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Birth Dt" ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}."Employee Name" ;;
  }

  dimension: employee_num {
    type: number
    sql: ${TABLE}."Employee Num" ;;
  }

  dimension: num_occurrences {
    type: number
    sql: ${TABLE}."NumberOfOccurrences" ;;
  }

  dimension_group: hire {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Hire Date" ;;
  }

  dimension: ids_bio_after_consent {
    type: string
    sql: ${TABLE}.IDS_BioAfterConsent ;;
  }

  dimension: ids_bio_before_consent {
    type: string
    sql: ${TABLE}.IDS_BioBeforeConsent ;;
  }

  dimension: ids_bio_without_consent {
    type: string
    sql: ${TABLE}.IDS_BioWithoutConsent ;;
  }

  dimension: ids_comments {
    type: string
    sql: ${TABLE}.IDS_Comments ;;
  }

  dimension_group: ids_consent {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.IDS_ConsentDate ;;
  }

  dimension: ids_first_name {
    type: string
    sql: ${TABLE}.IDS_FirstName ;;
  }

  dimension: ids_last_name {
    type: string
    sql: ${TABLE}.IDS_LastName ;;
  }

  dimension: ids_multiple_employment_dates {
    type: string
    sql: ${TABLE}.IDS_MultipleEmploymentDates ;;
  }

  dimension: ids_no_bio {
    type: string
    sql: ${TABLE}.IDS_NoBio ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension_group: job {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Job Date" ;;
  }

  dimension_group: job_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Job End" ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}."Job Title" ;;
  }

  dimension: jtc {
    type: number
    sql: ${TABLE}.JTC ;;
  }

  dimension_group: loc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Loc Date" ;;
  }

  dimension_group: loc_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Loc End" ;;
  }

  dimension: national_store_nu {
    type: number
    sql: ${TABLE}."National Store Nu" ;;
  }

  dimension: ops_consultant {
    type: string
    sql: ${TABLE}."Ops Consultant" ;;
  }

  dimension: prft_ctr_ds {
    type: string
    sql: ${TABLE}."Prft Ctr Ds" ;;
  }

  dimension: pro_ctr {
    type: number
    sql: ${TABLE}."Pro Ctr" ;;
  }

  dimension: reg_cd {
    type: number
    sql: ${TABLE}."Reg Cd" ;;
  }

  dimension: site_desc {
    type: string
    sql: ${TABLE}."Site Desc" ;;
  }

  dimension: site_state {
    type: string
    sql: ${TABLE}."Site State" ;;
  }

  dimension_group: term {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Term Date" ;;
  }

  dimension: term_reason {
    type: string
    sql: ${TABLE}."Term Reason" ;;
  }

  measure: count {
    type: count
    drill_fields: [employee_name, ids_first_name, ids_last_name]
  }
  measure: number_of_unique_employees {
    type: count_distinct
    sql: ${employee_num} ;;
  }


}
