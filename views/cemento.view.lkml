view: cemento {
  sql_table_name: `Materiales.cemento` ;;

  dimension: cantidad_minima {
    type: number
    sql: ${TABLE}.Cantidad_Minima ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.CIUDAD ;;
  }
  dimension: incluye_descargue {
    type: string
    sql: ${TABLE}.Incluye_Descargue ;;
  }
  dimension: markup_g {
    type: number
    sql: ${TABLE}.MARKUP_G ;;
  }
  dimension: markup_v_1_ {
    type: number
    sql: ${TABLE}.MARKUP_V_1_ ;;
  }
  dimension: markup_v_2_ {
    type: number
    sql: ${TABLE}.MARKUP_V_2_ ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: monto_unidad_descargue_ {
    type: number
    sql: ${TABLE}.monto_unidad_descargue_ ;;
  }
  dimension: precio_costo {
    label: "costo"
    type: number
    sql: ${TABLE}.PRECIO_COSTO ;;
  }
  dimension: precio_gerencia__con__iva_ {
    type: number
    sql: ${TABLE}.Precio_Gerencia__con__iva_ ;;
  }
  dimension: precio_gerencia__sin_iva_ {
    type: number
    sql: ${TABLE}.Precio_Gerencia__sin_iva_ ;;
  }
  dimension: precio_mas_iva {
    type: number
    sql: ${TABLE}.PRECIO_mas_Iva ;;
  }
  dimension: precio_vendedor_1__con_iva_2 {
    type: number
    sql: ${TABLE}.Precio_Vendedor_1__Con_Iva_2 ;;
  }
  dimension: precio_vendedor_1__sin_iva_ {
    type: number
    sql: ${TABLE}.Precio_Vendedor_1__sin_iva_ ;;
  }
  dimension: precio_vendedor_2__con_iva_2 {
    type: number
    sql: ${TABLE}.Precio_Vendedor_2__con_iva_2 ;;
  }
  dimension: precio_vendedor_2__sin_iva_ {
    type: number
    sql: ${TABLE}.Precio_Vendedor_2__sin_iva_ ;;
  }
  dimension: proveedor {
    type: string
    sql: ${TABLE}.PROVEEDOR ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
