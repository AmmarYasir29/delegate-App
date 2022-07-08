prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_imp.id(10634594420264037039)
,p_name=>'Last update data'
,p_alias=>'LAST-UPDATE-DATA'
,p_step_title=>unistr('\062A\0627\0631\064A\062E \0627\0644\0627\0646\0642\0637\0627\0639')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'AMMAR.YASIR6777@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220515210346'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10635228026549482570)
,p_name=>unistr('\062A\0642\0631\064A\0631 \0627\0644\0627\0646\0642\0637\0627\0639')
,p_template=>wwv_flow_imp.id(10634497095608036817)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCTOR.NAME as NAME,',
'    DOCTOR.PHONE as PHONE,',
'    DOCTOR.DELEGATE_ID as DELEGATE_ID,',
'    DOCTOR.START_DATE as START_DATE,',
'    DOCTOR.TOTAL_PRICE as TOTAL_PRICE,',
'    DOCTOR.LAST_UPDATE as LAST_UPDATE ',
' from DOCTOR DOCTOR',
' --where DOCTOR.LAST_UPDATE < add_months(SYSDATE, -1)',
' -- date of today grater than (or equal) date of comlomn by one month or more',
' -- format used is MM-DD-YYYY',
' where sysdate > add_months(LAST_UPDATE, 1)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(10634532090319036890)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10635228421046482630)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>10
,p_column_heading=>unistr('\0627\0644\0627\0633\0645')
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10635228669461482664)
,p_query_column_id=>2
,p_column_alias=>'PHONE'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\0627\0644\0647\0627\062A\0641')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10635229086748482665)
,p_query_column_id=>3
,p_column_alias=>'DELEGATE_ID'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\0627\0644\0645\0646\062F\0648\0628')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10635229473638482667)
,p_query_column_id=>4
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\062A\0627\0631\064A\062E \0627\0644\0628\062F\0627\064A\0629')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10635229900830482670)
,p_query_column_id=>5
,p_column_alias=>'TOTAL_PRICE'
,p_column_display_sequence=>50
,p_column_heading=>unistr('\0627\0644\0645\0628\0644\063A \0627\0644\0646\0647\0627\0626\064A')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10635230294615482670)
,p_query_column_id=>6
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>60
,p_column_heading=>unistr('\0627\062E\0631 \062A\0648\0627\0635\0644')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
