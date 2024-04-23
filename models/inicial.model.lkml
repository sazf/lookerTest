connection: "hippocnn"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: inicial_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: inicial_default_datagroup

explore: hierro {}

explore: cemento {}

