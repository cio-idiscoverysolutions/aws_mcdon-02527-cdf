view: cdf_current_employee_list_regions_master {
  sql_table_name: dbo.CDF_Current_Employee_List_Regions_Master ;;

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
    drill_fields: [employee_name]
  }
}
