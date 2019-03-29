view: end_points {
  sql_table_name: dbo.end_points ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: pillar {
    type: string
    sql: ${TABLE}.pillar ;;
  }

  dimension: product_endpoint {
    type: string
    sql: ${TABLE}.product_endpoint ;;
  }

  dimension: type_of_endpoint {
    type: string
    sql: ${TABLE}.type_of_endpoint ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, mapping.count]
  }
}
