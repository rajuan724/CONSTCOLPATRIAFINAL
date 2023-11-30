connection: "colpatria"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: constcolpatriafinal_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: constcolpatriafinal_default_datagroup

explore: mapas1 {
  join:timelines1{
    type: left_outer
    sql_on: ${mapas1.tipo}=${timelines1.tipo} ;;
    relationship: many_to_many
  }

  join:ventas2{
    type: full_outer
    sql_on: ${mapas1.region}=${ventas2.departamento} ;;
    relationship: many_to_many
  }
}
explore: ventas2 {}
explore: ventas2_copy {}
