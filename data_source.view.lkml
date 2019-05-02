view: data_source {
  sql_table_name: dbo.data_source ;;
  label: "Data Source"

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension_group: created {
    label: "Date Of Creation"
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

  dimension: integration {
    type: string
    sql: ${TABLE}.integration ;;
    hidden: yes
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
    hidden: yes
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
    label: "Partner"
  }

  dimension: partner_type {
    type: string
    sql: ${TABLE}.partner_type ;;
    label: "Partner Type"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    label: "Enabled"
  }

  measure: count {
    type: count
    drill_fields: [id, mapping.count]
    label: "Data Source Counts"
  }
}
