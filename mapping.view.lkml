view: mapping {
  sql_table_name: dbo.mapping ;;

  dimension: data_source_id {
    type: string
    sql: ${TABLE}.data_source_id ;;
  }

  dimension: end_points_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.end_points_id ;;
  }

  measure: count {
    type: count
    drill_fields: [end_points.id]
  }
}
