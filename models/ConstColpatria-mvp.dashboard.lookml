---
- dashboard: constcolpatriamvp
  title: ConstColpatria-mvp
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: HpU9PxlGAUyFP7eQdUkSCN
  elements:
  - title: Timeline Temas
    name: Timeline Temas
    model: constcolpatriafinal
    explore: mapas1
    type: looker_line
    fields: [timelines1.semana_week, average_of_percent, timelines1.tipo]
    pivots: [timelines1.tipo]
    fill_fields: [timelines1.semana_week]
    sorts: [timelines1.tipo, timelines1.semana_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Average of porcentaje
      value_format:
      value_format_name:
      based_on: mapas1.porcentaje
      _kind_hint: measure
      measure: average_of_porcentaje
      type: average
      _type_hint: number
    - category: table_calculation
      label: Percent of  Average of porcentaje
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_average_of_porcentaje
      args:
      - average_of_porcentaje
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Average of percent
      value_format:
      value_format_name: decimal_1
      based_on: timelines1.porcentaje
      _kind_hint: measure
      measure: average_of_percent
      type: average
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_average_of_porcentaje,
            id: percent_of_average_of_porcentaje, name: Percent of  Average of porcentaje}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Tema: mapas1.tema
      Departamento: ventas2.departamento
    row: 10
    col: 0
    width: 10
    height: 7
  - title: Porcentaje Temas
    name: Porcentaje Temas
    model: constcolpatriafinal
    explore: mapas1
    type: looker_column
    fields: [average_of_porcentaje, mapas1.tipo]
    filters: {}
    sorts: [average_of_porcentaje desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Average of porcentaje
      value_format:
      value_format_name:
      based_on: mapas1.porcentaje
      _kind_hint: measure
      measure: average_of_porcentaje
      type: average
      _type_hint: number
    - category: table_calculation
      label: " Porcentaje"
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: porcentaje
      args:
      - average_of_porcentaje
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
    limit_displayed_rows: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_average_of_porcentaje,
            id: percent_of_average_of_porcentaje, name: Percent of  Average of porcentaje}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_fields: [average_of_porcentaje]
    defaults_version: 1
    listen:
      Tema: mapas1.tema
      Departamento: ventas2.departamento
    row: 3
    col: 0
    width: 10
    height: 7
  - title: Cant Compradores por Zona
    name: Cant Compradores por Zona
    model: constcolpatriafinal
    explore: mapas1
    type: looker_grid
    fields: [ventas2.comprador_zona, count_of_id_comprador]
    filters:
      mapas1.tema: ArriendoCompra
      ventas2.comprador_zona: "-NULL"
    sorts: [count_of_id_comprador desc 0]
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
      count_of_id_venta: Cantidad de Ventas
      count_of_id_comprador: Cant. Compradores
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
      Comprador Ciudad Residencia: ventas2.comprador_ciudad_residencia
      Departamento: ventas2.departamento
      Macroproyecto: ventas2.vta_nombre_macro
    row: 3
    col: 10
    width: 7
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "##Google Trends V.S. Data Constructora Colpatria"
    row: 0
    col: 6
    width: 11
    height: 2
  - type: button
    name: button_98
    rich_content_json: '{"text":"<Google Trends","description":"","newTab":false,"alignment":"left","size":"small","style":"FILLED","color":"#EA4335","href":"https://3b429a66-8f24-414c-9e7b-6424a06bb99c.looker.app/dashboards/6?Departamento="}'
    row: 2
    col: 1
    width: 6
    height: 1
  - type: button
    name: button_108
    rich_content_json: '{"text":"Caracterización de Datos >","description":"","newTab":false,"alignment":"right","size":"small","style":"FILLED","color":"#EA4335","href":"https://3b429a66-8f24-414c-9e7b-6424a06bb99c.looker.app/dashboards/8?Departamento=&Edad=%5B0%2C100%5D"}'
    row: 2
    col: 16
    width: 7
    height: 1
  - title: Rango Edad
    name: Rango Edad
    model: constcolpatriafinal
    explore: mapas1
    type: looker_pie
    fields: [ventas2.rango_edad, count_of_id_venta]
    filters:
      ventas2.rango_edad: "-Below 0,-Undefined"
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
    value_labels: legend
    label_type: labPer
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
      count_of_id_venta: Cantidad de Ventas
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
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Tema: mapas1.tema
      Comprador Ciudad Residencia: ventas2.comprador_ciudad_residencia
      Departamento: ventas2.departamento
      Macroproyecto: ventas2.vta_nombre_macro
    row: 11
    col: 10
    width: 14
    height: 6
  - title: Cant Compradores por Barrio
    name: Cant Compradores por Barrio
    model: constcolpatriafinal
    explore: mapas1
    type: looker_grid
    fields: [count_of_id_comprador, ventas2.comprador_barrio]
    filters:
      ventas2.comprador_zona: "-NULL"
    sorts: [count_of_id_comprador desc 0]
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
      count_of_id_venta: Cantidad de Ventas
      count_of_id_comprador: Cant. Compradores
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
      Tema: mapas1.tema
      Comprador Ciudad Residencia: ventas2.comprador_ciudad_residencia
      Departamento: ventas2.departamento
      Macroproyecto: ventas2.vta_nombre_macro
    row: 3
    col: 17
    width: 7
    height: 8
  - type: button
    name: button_130
    rich_content_json: '{"text":"Visitas Constructora Colpatria","description":"","newTab":false,"alignment":"center","size":"small","style":"FILLED","color":"#EA4335","href":"https://3b429a66-8f24-414c-9e7b-6424a06bb99c.looker.app/dashboards/10?Ciudad+Visita=&Macroproyecto=&Tema=ArriendoCompra&Fecha+Visita+Week=2021%2F01%2F02+to+2023%2F11%2F30"}'
    row: 2
    col: 7
    width: 9
    height: 1
  filters:
  - name: Tema
    title: Tema
    type: field_filter
    default_value: ArriendoCompra
    allow_multiple_values: true
    required: true
    ui_config:
      type: checkboxes
      display: popover
    model: constcolpatriafinal
    explore: mapas1
    listens_to_filters: [Departamento]
    field: mapas1.tema
  - name: Departamento
    title: Departamento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options:
      - Amazonas
      - Antioquia
      - Arauca
      - Atlántico
      - Bogotá D.C.
      - Bolívar
      - Boyacá
      - Caldas
      - Caquetá
      - Casanare
      - Cauca
      - Cesar
      - Chocó
      - Cundinamarca
      - Córdoba
      - Guaviare
      - Huila
      - La Guajira
      - Magdalena
      - Meta
      - Nariño
      - Norte de Santander
      - Putumayo
      - Quindío
      - Risaralda
      - San Andrés y Providencia
      - Santander
      - Sucre
      - Tolima
      - Valle del Cauca
    model: constcolpatriafinal
    explore: mapas1
    listens_to_filters: [Comprador Ciudad Residencia, Macroproyecto]
    field: ventas2.departamento
  - name: Comprador Ciudad Residencia
    title: Comprador Ciudad Residencia
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: constcolpatriafinal
    explore: mapas1
    listens_to_filters: [Departamento, Macroproyecto]
    field: ventas2.comprador_ciudad_residencia
  - name: Macroproyecto
    title: Macroproyecto
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: constcolpatriafinal
    explore: mapas1
    listens_to_filters: [Departamento, Comprador Ciudad Residencia]
    field: ventas2.vta_nombre_macro
