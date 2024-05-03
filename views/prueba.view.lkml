view: prueba {

    sql_table_name: `Materiales.cemento` ;;

    dimension: cantidad_minima {
      type: number
      sql: ${TABLE}.Cantidad_Minima ;;
    }
    dimension: ciudad {
      type: string
      sql: ${TABLE}.CIUDAD ;;
      drill_fields: [cantidad_minima,incluye_descargue]
    }
    dimension: incluye_descargue {
      type: string
      sql: ${TABLE}.Incluye_Descargue ;;
    }

    dimension: midim {
      type: number
      sql: ${cantidad_minima}*2 ;;
      value_format: "$#.00;($#.00)"
    }

    dimension: nueva_dim {
      type: number
      sql: ${cantidad_minima}*3 ;;
    }

  dimension: ciudad_google {
    sql: ${ciudad} ;;
    link: {
      label: "Google"
      url: "https://www.google.com/search?q={{ value }}"
      icon_url: "https://google.com/favicon.ico"
    }
  }

  parameter: filtro_dim {
    type: unquoted
    allowed_value: {
      label: "x 2"
      value: "x2"
    }
    allowed_value: {
      label: "x 3"
      value: "x3"
    }
  }

  dimension: dim_liquida {
    sql: {% if filtro_dim._parameter_value == 'x2' %}
    ${midim}
    {% elsif filtro_dim._parameter_value == 'x3' %}
    ${nueva_dim}
    {% endif %}
    ;;

    }


    measure: count {
      type: count
    }

    measure: suma {
      type: sum
      sql:  ${cantidad_minima}*${cantidad_minima} ;;
    }

    # https://cloud.google.com/looker/docs/liquid-variable-reference?hl=es-419
 }
