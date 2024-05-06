view: hierro {
  sql_table_name: `hippo-387619.Materiales.hierro` ;;

  dimension: ciudad {
    type: string
    sql: ${TABLE}.CIUDAD ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: flete {
    type: number
    sql: ${TABLE}.FLETE ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
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
  dimension: precio_costo {
    type: number
    sql: ${TABLE}.PRECIO_COSTO ;;
  }
  dimension: precio_gerencia {
    type: number
    sql: ${TABLE}.PRECIO_GERENCIA ;;
  }
  dimension: precio_vendedor__1_ {
    type: number
    sql: ${TABLE}.Precio_Vendedor__1_ ;;
  }
  dimension: precio_vendedor__2_ {
    type: number
    sql: ${TABLE}.Precio_Vendedor__2_ ;;
  }
  dimension: punto_de_fabrica {
    type: string
    sql: ${TABLE}.PUNTO_DE_FABRICA ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
