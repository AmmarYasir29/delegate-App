prompt --application/shared_components/user_interface/lovs/list_invoice_ms_invoice_type
begin
--   Manifest
--     LIST_INVOICE_MS.INVOICE_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>54225053803898075211
,p_default_application_id=>86208
,p_default_id_offset=>10632201745325949405
,p_default_owner=>'WKSP_DELEGATE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13470909368721001759)
,p_lov_name=>'LIST_INVOICE_MS.INVOICE_TYPE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'LIST_INVOICE_MS'
,p_return_column_name=>'ID'
,p_display_column_name=>'INVOICE_TYPE'
,p_default_sort_column_name=>'INVOICE_TYPE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
