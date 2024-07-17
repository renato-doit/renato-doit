# The name of this view in Looker is "Test Sheet"
view: test_sheet {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test_gsheets.taxi_trips` ;;

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.taxi_id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Desc" in Explore.

  dimension: trip_miles {
    type: number
    sql: ${TABLE}.`trip_miles` ;;
  }

}
