prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_imp.id(10634594420264037039)
,p_name=>unistr('\062A\0642\0631\064A\0631 \0627\0644\0642\0648\0627\0626\0645')
,p_alias=>unistr('\062A\0642\0631\064A\0631-\0627\0644\0642\0648\0627\0626\0645')
,p_step_title=>unistr('\062A\0642\0631\064A\0631 \0627\0644\0642\0648\0627\0626\0645')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AMMAR.YASIR6777@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220602090323'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10634882662770772481)
,p_plug_name=>unistr('\0627\0636\0627\0641\0629 \0642\0627\0626\0645\0629')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10634492749137036809)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LIST_INVOICE_MS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'from_date'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_imp.id(13703751400285852700)
,p_prn_page_header=>unistr('\0627\0636\0627\0641\0629 \0642\0627\0626\0645\0629')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10634883117210772481)
,p_name=>unistr('\0627\0636\0627\0641\0629 \0642\0627\0626\0645\0629')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:P7_ID:\#ID#\'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(13704045497193076979)
,p_owner=>'ADMIN'
,p_internal_uid=>2681371884823076
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10634883212951772484)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10634883550579772490)
,p_db_column_name=>'DELEGATE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\0627\0644\0645\0646\062F\0648\0628')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(10634910897299802628)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10634884021851772490)
,p_db_column_name=>'FROM_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\0645\0646 \062A\0627\0631\064A\062E')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10634884360487772490)
,p_db_column_name=>'TO_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\0627\0644\0649 \062A\0627\0631\064A\062E')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10634884818970772490)
,p_db_column_name=>'INVOICE_PRICE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\0645\0628\0644\063A \0627\0644\0642\0627\0626\0645\0629-\0645\062C\0645\0648\0639 \0627\0644\0641\0648\0627\062A\064A\0631')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10634597869831536637)
,p_db_column_name=>'INVOICE_TYPE'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>unistr('\0646\0648\0639 \0627\0644\0642\0627\0626\0645\0629')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(10635079563885010789)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10634909897676782181)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27082'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:DELEGATE_ID:FROM_DATE:TO_DATE:INVOICE_PRICE:INVOICE_TYPE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10634886021115772495)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10634882662770772481)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10634569692021036962)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0646\0634\0627\0621')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7'
,p_security_scheme=>wwv_flow_imp.id(13704041057372075966)
);
wwv_flow_imp.component_end;
end;
/
