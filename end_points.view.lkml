view: end_points {
  sql_table_name: dbo.end_points ;;
  label: "Endpoints"

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    hidden: yes
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
    label: "Date Of Creation"
  }

  dimension: pillar {
    type: string
    sql: ${TABLE}.pillar ;;
    label: "Pillar"
  }

  dimension: product_endpoint {
    type: string
    sql: ${TABLE}.product_endpoint ;;
    label: "Product Endpoint"
  }

  dimension: type_of_endpoint {
    type: string
    sql: ${TABLE}.type_of_endpoint ;;
    label: "Type of Endpoint"
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
    label: "Product Url"
  }

  measure: count {
    type: count
    drill_fields: [id, mapping.count]
    label: "Endpoint Count"
  }
}
