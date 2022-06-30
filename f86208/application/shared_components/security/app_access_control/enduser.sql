prompt --application/shared_components/security/app_access_control/enduser
begin
--   Manifest
--     ACL ROLE: enduser
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>54225053803898075211
,p_default_application_id=>86208
,p_default_id_offset=>10632201745325949405
,p_default_owner=>'WKSP_DELEGATE'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(11256817511671028668)
,p_static_id=>'ENDUSER'
,p_name=>'enduser'
);
wwv_flow_imp.component_end;
end;
/
