prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 86208
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>54225053803898075211
,p_default_application_id=>86208
,p_default_id_offset=>10632201745325949405
,p_default_owner=>'WKSP_DELEGATE'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(10634597049264037233)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
