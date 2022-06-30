prompt --application/shared_components/user_interface/lovs/invoice_type
begin
--   Manifest
--     INVOICE TYPE
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
 p_id=>wwv_flow_imp.id(10635079563885010789)
,p_lov_name=>'INVOICE TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(10635079563885010789)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10635079904736010795)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\0627\0636\0627\0641\0629 \0627\0644\0649 \0627\0644\062D\0633\0627\0628')
,p_lov_return_value=>'+'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10635080312025010795)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\0637\0631\062D \0645\0646 \0627\0644\062D\0633\0627\0628')
,p_lov_return_value=>'-'
);
wwv_flow_imp.component_end;
end;
/
