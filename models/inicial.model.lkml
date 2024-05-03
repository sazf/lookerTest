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

explore: prueba {
  access_filter: {
    field: ciudad
    user_attribute: user_ciudad
  }
  # join: sap_interfaz_recaudo {
    # type: inner
    # sql_on: ${fact_facturacion.asignacion}=${sap_interfaz_recaudo.asignacion} ;;
    # relationship: one_to_one
    # sql_where: ${sap_interfaz_recaudo.textodocumento}!= "CARGO MATRICULA EXTRAORD" ;;
  # }

}
