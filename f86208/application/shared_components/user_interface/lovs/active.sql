prompt --application/shared_components/user_interface/lovs/active
begin
--   Manifest
--     ACTIVE
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
 p_id=>wwv_flow_imp.id(10635078027207964453)
,p_lov_name=>'ACTIVE'
,p_lov_query=>'.'||wwv_flow_imp.id(10635078027207964453)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10635078333963964464)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\0641\0639\0627\0644')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10635078665132964467)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\0645\062A\0648\0642\0641')
,p_lov_return_value=>'0'
);
wwv_flow_imp.component_end;
end;
/
