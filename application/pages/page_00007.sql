prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>54225053803898075211
,p_default_application_id=>86208
,p_default_id_offset=>10632201745325949405
,p_default_owner=>'WKSP_DELEGATE'
);
wwv_flow_imp_page.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_imp.id(10634594420264037039)
,p_name=>unistr('\0627\0636\0627\0641\0629 \0627\0644\0642\0627\0626\0645\0629')
,p_alias=>unistr('\0627\0636\0627\0641\0629-\0627\0644\0642\0627\0626\0645\0629')
,p_step_title=>unistr('\0627\0636\0627\0641\0629 \0627\0644\0642\0627\0626\0645\0629')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// create a private scope where $ is set to apex.jQuery',
'(function($) {',
'    // This is the function that calculates over all the rows of the model and then',
'    // updates something else.',
'    // Change this to do whatever calculation is needed.',
'    // Call this whenever the model data changes.',
'    function update(model) {',
'        var salKey = model.getFieldKey("TOTAL_PRICE"), ',
'            total = 0;',
'',
'        console.log(">> starting sum SAL column")',
'        model.forEach(function(record, index, id) {',
'            var sal = parseFloat(record[salKey]),  // record[salKey] should be a little faster than using model.getValue in a loop',
'                meta = model.getRecordMetadata(id);',
'',
'            if (!isNaN(sal) && !meta.deleted && !meta.agg) {',
'                total += sal;',
'            }',
'        });',
'        console.log(">> setting sum SAL column to " + total)',
'        $s("P7_INVOICE_PRICE", total);',
'    }',
'',
'    //',
'    // This is the general pattern for subscribing to model notifications',
'    //',
'',
'    // need to do this here rather than in Execute when Page Loads so that the handler',
'    // is setup BEFORE the IG is initialized otherwise miss the first model created event',
'    $(function() {',
'        // the model gets released and created at various times such as when the report changes',
'        // listen for model created events so that we can subscribe to model notifications',
'        $("#invoice_dt").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid,',
'                model = ui.model;',
'',
'            // note this is only done for the grid veiw. It could be done for',
'            // other views if desired. The imporant thing to realize is that each',
'            // view has its own model',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        console.log(">> model changed ", type, change);',
'                        if ( type === "set" ) {',
'                            // don''t bother to recalculate if other columns change',
'                            if (change.field === "TOTAL_PRICE" ) {',
'                                update( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            // any other change except for move and metaChange affect the calculation',
'                            update( model );',
'                        }',
'                    },',
'                    progressView: $("#P7_INVOICE_PRICE") // this will cause a spinner on this field',
'                } );',
'                // if not lazy loaded there is no notification for initial data so update',
'                update( model ); ',
'                // just in case fetch all the data. Model notifications will',
'                // cause calls to update so nothing to do in the callback function.',
'                // can remove if data will always be less than 50 records',
'                model.fetchAll(function() {});',
'            }',
'        });',
'',
'    });',
'',
'})(apex.jQuery);',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'AMMAR.YASIR6777@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220602091935'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10634872244224772451)
,p_plug_name=>unistr('\0627\0636\0627\0641\0629 \0642\0627\0626\0645\0629 \062C\062F\064A\062F\0647')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(10634497095608036817)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LIST_INVOICE_MS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10634886611765772994)
,p_plug_name=>unistr('\0627\0636\0627\0641\0629 \062A\0641\0627\0635\064A\0644 \0627\0644\0642\0627\0626\0645\0629')
,p_region_name=>'invoice_dt'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10634492749137036809)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'LIST_INVOICE_DT'
,p_query_where=>'LIST_INVOICE_ID = :P7_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'id'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P7_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ID'
,p_prn_page_header=>unistr('\0627\0636\0627\0641\0629 \062A\0641\0627\0635\064A\0644 \0627\0644\0642\0627\0626\0645\0629')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7278428460317618309)
,p_name=>'PATIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\0627\0633\0645 \0627\0644\0645\0631\064A\0636')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634599180911536650)
,p_name=>'NOTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\0627\0644\0645\0644\0627\062D\0638\0627\062A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>300
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634599255849536651)
,p_name=>'ROW_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\0646\0648\0639 \0627\0644\0642\0627\0626\0645\0629')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P7_INVOICE_TYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634887837058773008)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634888262670773012)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634889316575773109)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634890196831773112)
,p_name=>'RECEVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEVE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>unistr('\062A\0627\0631\064A\062E \0627\0644\062A\0633\0644\064A\0645')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634891235601773112)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\0627\0644\0637\0628\064A\0628')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(10634911085272804092)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634892199330773114)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\0627\0644\0633\0639\0631')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634893237652773114)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\0627\0644\0639\062F\062F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634894194674773120)
,p_name=>'TOTAL_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\0627\0644\0645\062C\0645\0648\0639')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10634895206600773120)
,p_name=>'LIST_INVOICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIST_INVOICE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P7_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10634886997915772998)
,p_internal_uid=>2685252589823593
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10634887348118773003)
,p_interactive_grid_id=>wwv_flow_imp.id(10634886997915772998)
,p_static_id=>'26857'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10634887605295773006)
,p_report_id=>wwv_flow_imp.id(10634887348118773003)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634888690090773014)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10634888262670773012)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634889577596773111)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10634889316575773109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634890574224773112)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10634890196831773112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634891640507773112)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10634891235601773112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634892631976773114)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10634892199330773114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634893549137773119)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10634893237652773114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634894598497773120)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10634894194674773120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10634895558408773120)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10634895206600773120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10635210392531021280)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10634599180911536650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10635211191629021333)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10634599255849536651)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19403757472216054688)
,p_view_id=>wwv_flow_imp.id(10634887605295773006)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7278428460317618309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10634878869377772473)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10634569692021036962)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\062D\0641\0638 \0627\0644\062A\063A\064A\0631\0627\062A')
,p_button_position=>'CHANGE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10634877909705772472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10634569692021036962)
,p_button_image_alt=>unistr('\0627\0644\063A\0627\0621')
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10634879325679772473)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10634569692021036962)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0646\0634\0627\0621')
,p_button_position=>'CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10634878540113772473)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10634569692021036962)
,p_button_image_alt=>unistr('\062D\0630\0641')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(13703779172077856328)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10634879699927772473)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10634569023694036961)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10634879564170772473)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10634569023694036961)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P7_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10634880540723772475)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ID:&P7_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10634879699927772473)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10634880901079772475)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ID:&P7_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10634879564170772473)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10634597582525536634)
,p_branch_name=>'stay here'
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ID:&P7_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634597825316536636)
,p_name=>'P7_INVOICE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_item_source_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_prompt=>unistr('\0646\0648\0639 \0627\0644\0642\0627\0626\0645\0629')
,p_source=>'INVOICE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\0627\0636\0627\0641\0629;+,\0637\0631\062D;-')
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(10634567176256036956)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634872611116772456)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_item_source_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(10634567176256036956)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634872977728772459)
,p_name=>'P7_ID_PREV'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634873374599772459)
,p_name=>'P7_ID_NEXT'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634873763281772461)
,p_name=>'P7_DELEGATE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_item_source_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_prompt=>unistr('\0627\0644\0645\0646\062F\0648\0628')
,p_source=>'DELEGATE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DELEGATE'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(10634567176256036956)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634874198598772464)
,p_name=>'P7_FROM_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_item_source_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_prompt=>unistr('\0645\0646 \062A\0627\0631\064A\062E')
,p_source=>'FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(10634567176256036956)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634874561008772464)
,p_name=>'P7_TO_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_item_source_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_prompt=>unistr('\0627\0644\0649 \062A\0627\0631\064A\062E')
,p_source=>'TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(10634567176256036956)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634875010849772464)
,p_name=>'P7_INVOICE_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_item_source_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_item_default=>'0'
,p_prompt=>unistr('\0645\0628\0644\063A \0627\0644\0642\0627\0626\0645\0629')
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'INVOICE_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'apex_disabled'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(10634567176256036956)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10634877614513772469)
,p_name=>'P7_ID_COUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10634872244224772451)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10634595920571536617)
,p_name=>'get total'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(10634886611765772994)
,p_triggering_element=>'PRICE,QUANTITY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10634596024976536618)
,p_event_id=>wwv_flow_imp.id(10634595920571536617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL_PRICE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':PRICE * :QUANTITY'
,p_attribute_07=>'QUANTITY,PRICE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10634882081158772480)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10634872244224772451)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on LIST_INVOICE_MS'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10634896160046773122)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10634886611765772994)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\0627\0636\0627\0641\0629 \062A\0641\0627\0635\064A\0644 \0627\0644\0642\0627\0626\0645\0629 - Save Interactive Grid Data')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10634597481789536633)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update total  in master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update LIST_INVOICE_MS ',
'set INVOICE_PRICE = (select sum (TOTAL_PRICE) from LIST_INVOICE_DT',
'where LIST_INVOICE_DT.LIST_INVOICE_ID = :P7_ID)',
'where LIST_INVOICE_MS.ID = :P7_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10634878869377772473)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10634598126861536639)
,p_process_sequence=>55
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'calculate total delegate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'incress_price number;',
'decress_price number;',
'',
'begin',
'select sum(LIST_INVOICE_MS.INVOICE_PRICE) into incress_price ',
'from LIST_INVOICE_MS where LIST_INVOICE_MS.INVOICE_TYPE = ''+'' and LIST_INVOICE_MS.DELEGATE_ID = :P7_DELEGATE_ID;',
'',
'select sum(LIST_INVOICE_MS.INVOICE_PRICE) into decress_price ',
'from LIST_INVOICE_MS where LIST_INVOICE_MS.INVOICE_TYPE = ''-'' and LIST_INVOICE_MS.DELEGATE_ID = :P7_DELEGATE_ID;',
'',
'if incress_price is null then incress_price := 0; END IF;',
'if decress_price is null then decress_price := 0; end if;',
'UPDATE DELEGATE',
'SET DELEGATE.TOTAL_PRICE = incress_price - decress_price WHERE DELEGATE.id = :P7_DELEGATE_ID;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10634878869377772473)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10634598257848536641)
,p_process_sequence=>65
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'calculate total doctor'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'incress_price number;',
'decress_price number;',
'',
'begin',
'null;',
'/*',
'select sum(LIST_INVOICE_MS.INVOICE_PRICE) into incress_price ',
'from LIST_INVOICE_MS where LIST_INVOICE_MS.INVOICE_TYPE = ''+'' and LIST_INVOICE_MS.DELEGATE_ID = :P7_DELEGATE_ID;',
'',
'select sum(LIST_INVOICE_MS.INVOICE_PRICE) into decress_price ',
'from LIST_INVOICE_MS where LIST_INVOICE_MS.INVOICE_TYPE = ''-'' and LIST_INVOICE_MS.DELEGATE_ID = :P7_DELEGATE_ID;',
'',
'if incress_price is null then incress_price := 0; END IF;',
'if decress_price is null then decress_price := 0; end if;',
'UPDATE DELEGATE',
'SET DELEGATE.TOTAL_PRICE = incress_price - decress_price WHERE DELEGATE.id = :P7_DELEGATE_ID;',
'*/',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10634878869377772473)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>54225053803898075211
,p_default_application_id=>86208
,p_default_id_offset=>10632201745325949405
,p_default_owner=>'WKSP_DELEGATE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10634881711656772476)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10634872244224772451)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on LIST_INVOICE_MS'
,p_attribute_01=>'P7_ID_NEXT'
,p_attribute_02=>'P7_ID_PREV'
,p_attribute_03=>'P7_ID_COUNT'
);
null;
wwv_flow_imp.component_end;
end;
/
