connection: "cs_endpoints"

# include all the views
include: "*.view"

datagroup: cs_endpoints_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cs_endpoints_default_datagroup

explore: data_source {}

explore: end_points {}

explore: mapping {
   join: data_source {
     relationship: many_to_many
     sql_on: ${mapping.data_source_id} = ${data_source.id} ;;
   }

   join: end_points {
     relationship: many_to_many
     sql_on: ${mapping.end_points_id} = ${end_points.id} ;;
   }
}
