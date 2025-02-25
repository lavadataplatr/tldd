view: oracleebsap_hold_codes {
  sql_table_name: `dataplatr-sandbox.TestStage.oracleebs-ap_hold_codes` ;;

  dimension: created_by {
    type: number
    sql: ${TABLE}.CREATED_BY ;;
  }
  dimension_group: creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CREATION_DATE ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }
  dimension: external_description {
    type: string
    sql: ${TABLE}.EXTERNAL_DESCRIPTION ;;
  }
  dimension: hold_instruction {
    type: string
    sql: ${TABLE}.HOLD_INSTRUCTION ;;
  }
  dimension: hold_lookup_code {
    type: string
    sql: ${TABLE}.HOLD_LOOKUP_CODE ;;
  }
  dimension: hold_type {
    type: string
    sql: ${TABLE}.HOLD_TYPE ;;
  }
  dimension_group: inactive {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INACTIVE_DATE ;;
  }
  dimension: initiate_workflow_flag {
    type: string
    sql: ${TABLE}.INITIATE_WORKFLOW_FLAG ;;
  }
  dimension_group: last_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
  }
  dimension: last_update_login {
    type: number
    sql: ${TABLE}.LAST_UPDATE_LOGIN ;;
  }
  dimension: last_updated_by {
    type: number
    sql: ${TABLE}.LAST_UPDATED_BY ;;
  }
  dimension: postable_flag {
    type: string
    sql: ${TABLE}.POSTABLE_FLAG ;;
  }
  dimension: reminder_days {
    type: number
    sql: ${TABLE}.REMINDER_DAYS ;;
  }
  dimension: user_releaseable_flag {
    type: string
    sql: ${TABLE}.USER_RELEASEABLE_FLAG ;;
  }
  dimension: user_updateable_flag {
    type: string
    sql: ${TABLE}.USER_UPDATEABLE_FLAG ;;
  }
  dimension: wait_before_notify_days {
    type: number
    sql: ${TABLE}.WAIT_BEFORE_NOTIFY_DAYS ;;
  }
  measure: count {
    type: count
  }
}
