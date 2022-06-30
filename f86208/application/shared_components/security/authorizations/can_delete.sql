prompt --application/shared_components/security/authorizations/can_delete
begin
--   Manifest
--     SECURITY SCHEME: Can Delete
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>54225053803898075211
,p_default_application_id=>86208
,p_default_id_offset=>10632201745325949405
,p_default_owner=>'WKSP_DELEGATE'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(13703779172077856328)
,p_name=>'Can Delete'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from USER_RIGHTS',
'where user_id = :APP_USER and module_id = :APP_PAGE_ID',
'and CAN_DELETE = 1'))
,p_error_message=>unistr('\0644\064A\0633 \0644\062F\064A\0643 \0635\0644\0627\062D\064A\0629')
,p_caching=>'NOCACHE'
);
wwv_flow_imp.component_end;
end;
/
