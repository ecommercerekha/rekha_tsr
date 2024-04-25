
# If necessary, uncomment the line below to include explore_source.
# include: "rekha_tsr.model.lkml"

# If necessary, uncomment the line below to include explore_source.
# include: "rekha_tsr.model.lkml"

view: rekha {
  derived_table: {
    explore_source: order_items {
      column: id { field: orders.id }
      column: count { field: orders.count }
      column: count { field: users.count }
      column: city { field: users.city }
    }
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: city {
    description: ""
    hidden: yes
  }
}
