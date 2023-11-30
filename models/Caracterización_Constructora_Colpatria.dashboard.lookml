---
- dashboard: caracterizacin_constructora_colpatria
  title: Caracterización Constructora Colpatria
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: WUcVP24Zx09kRlBIsq7Xj4
  elements:
  - title: 'Top 5 Comparación Compradores VS Ventas por Ciudades '
    name: 'Top 5 Comparación Compradores VS Ventas por Ciudades '
    model: constcolpatriafinal
    explore: mapas1
    type: looker_column
    fields: [count_of_id_comprador_2, count_of_id_venta_2, ventas2.comprador_ciudad_residencia]
    sorts: [count_of_id_venta_2 desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_id_venta
      based_on: ventas2.id_venta
      expression: ''
      label: Count of ID Venta
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_id_comprador
      based_on: ventas2.id_comprador
      expression: ''
      label: Count of ID Comprador
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_id_venta_2
      based_on: ventas2.id_venta
      expression: ''
      label: Count of ID Venta
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_id_comprador_2
      based_on: ventas2.id_comprador
      expression: ''
      label: Count of ID Comprador
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_id_venta_2,
            id: count_of_id_venta_2, name: Count of ID Venta}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    hide_legend: false
    series_colors:
      count_of_id_venta_2: "#FF8168"
      count_of_id_comprador_2: "#EA4335"
    series_labels:
      count_of_id_venta: Cantidad de Ventas
      count_of_id_venta_2: Cant Ventas
      count_of_id_comprador_2: Cant Compradores
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_id_venta:
        is_active: true
        value_display: true
        palette:
          palette_id: 2d0b0a0a-6e16-4539-1851-2eb6b385818b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e3808c"
          - "#da111c"
      count_of_id_comprador:
        is_active: true
        palette:
          palette_id: 011d3846-a562-57ab-9aae-d07db5ff1314
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e3808c"
          - "#da111c"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Edad: ventas2.edad
      Departamento: ventas2.departamento
    row: 2
    col: 0
    width: 11
    height: 7
  - title: Número de Hijos
    name: Número de Hijos
    model: constcolpatriafinal
    explore: mapas1
    type: looker_pie
    fields: [count_of_id_comprador_2, ventas2.comprador_numero_hijos]
    filters:
      ventas2.comprador_numero_hijos: "-%-^ ^ ^ ^ ^ ^ ^ ^ ^ %,-^ 0^ ^ ^ ^ ^ ^ ^ ^\
        \ ^ ,-NULL"
    sorts: [ventas2.comprador_numero_hijos]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_id_venta
      based_on: ventas2.id_venta
      expression: ''
      label: Count of ID Venta
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_id_comprador
      based_on: ventas2.id_comprador
      expression: ''
      label: Count of ID Comprador
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_id_venta_2
      based_on: ventas2.id_venta
      expression: ''
      label: Count of ID Venta
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_id_comprador_2
      based_on: ventas2.id_comprador
      expression: ''
      label: Count of ID Comprador
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 8cb50a08-276f-a4b9-c2bd-62d254060763
        label: Custom
        type: continuous
        stops:
        - color: "#EA4335"
          offset: 0
        - color: "#e7dfde"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_labels:
      count_of_id_venta: Cantidad de Ventas
      count_of_id_venta_2: Cant Ventas
      count_of_id_comprador_2: Cant Compradores
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_id_venta_2,
            id: count_of_id_venta_2, name: Count of ID Venta}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    hide_legend: false
    legend_position: center
    font_size: 12
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_id_venta:
        is_active: true
        value_display: true
        palette:
          palette_id: 2d0b0a0a-6e16-4539-1851-2eb6b385818b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e3808c"
          - "#da111c"
      count_of_id_comprador:
        is_active: true
        palette:
          palette_id: 011d3846-a562-57ab-9aae-d07db5ff1314
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e3808c"
          - "#da111c"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map: usa
    map_projection: ''
    listen:
      Edad: ventas2.edad
      Departamento: ventas2.departamento
    row: 2
    col: 18
    width: 6
    height: 7
  - title: Compradores
    name: Compradores
    model: constcolpatriafinal
    explore: mapas1
    type: looker_grid
    fields: [ventas2.id_comprador, ventas2.nombre_completo, count_of_id_venta]
    filters:
      ventas2.comprador_ciudad_residencia: ''
    sorts: [count_of_id_venta desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_id_venta
      based_on: ventas2.id_venta
      expression: ''
      label: Count of ID Venta
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      count_of_id_venta: Cantidad
    series_cell_visualizations:
      count_of_id_venta:
        is_active: false
        value_display: true
        palette:
          palette_id: 2d0b0a0a-6e16-4539-1851-2eb6b385818b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e3808c"
          - "#da111c"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Edad: ventas2.edad
      Departamento: ventas2.departamento
    row: 2
    col: 11
    width: 7
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "##Caracterización de Datos"
    row: 0
    col: 0
    width: 7
    height: 2
  - type: button
    name: button_107
    rich_content_json: '{"text":"Google Trends V.S. Data Constructora Colpatria >","description":"","newTab":false,"alignment":"right","size":"small","style":"FILLED","color":"#EA4335","href":"https://3b429a66-8f24-414c-9e7b-6424a06bb99c.looker.app/dashboards/7?Tema=ArriendoCompra&Departamento=&Comprador+Ciudad+Residencia="}'
    row: 0
    col: 14
    width: 10
    height: 2
  filters:
  - name: Departamento
    title: Departamento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: constcolpatriafinal
    explore: mapas1
    listens_to_filters: [Edad]
    field: ventas2.departamento
  - name: Edad
    title: Edad
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: constcolpatriafinal
    explore: mapas1
    listens_to_filters: []
    field: ventas2.edad
