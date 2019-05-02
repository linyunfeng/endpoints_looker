view: mapping {
  sql_table_name: dbo.mapping ;;
  label: "Data Source Endpoint Mapping"

  dimension: data_source_id {
    type: string
    sql: ${TABLE}.data_source_id ;;
    hidden: yes
  }

  dimension: end_points_id {
    type: string
    sql: ${TABLE}.end_points_id ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: []
    label: "Data Source Endpoint Count"
  }
}
