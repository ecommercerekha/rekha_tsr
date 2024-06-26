view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
measure: count_conditional {
  type: count
  html:
    {% if orders.status._value == "complete" %}
      <p style="color:green"> {{ rendered_value }}</p>
    {% else %}
      <p style="color:blue"> {{ rendered_value }}</p>
    {% endif %}
    ;;
}

measure: count_conditional_correct {
  type: count
  html:
    {% if orders.status._value == "complete" %}
      <p style="color:green"> {{ rendered_value }}</p>
    {% else %}
      <p style="color:blue"> {{ rendered_value }}</p>
    {% endif %}
    ;;
}
}
