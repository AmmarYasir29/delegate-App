prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 86208
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>54225053803898075211
,p_default_application_id=>86208
,p_default_id_offset=>10632201745325949405
,p_default_owner=>'WKSP_DELEGATE'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(10634572662144036990)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(10634432563567036651)
,p_default_dialog_template=>wwv_flow_imp.id(10634427359491036625)
,p_error_template=>wwv_flow_imp.id(10634417714624036594)
,p_printer_friendly_template=>wwv_flow_imp.id(10634432563567036651)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(10634417714624036594)
,p_default_button_template=>wwv_flow_imp.id(10634569692021036962)
,p_default_region_template=>wwv_flow_imp.id(10634497095608036817)
,p_default_chart_template=>wwv_flow_imp.id(10634497095608036817)
,p_default_form_template=>wwv_flow_imp.id(10634497095608036817)
,p_default_reportr_template=>wwv_flow_imp.id(10634497095608036817)
,p_default_tabform_template=>wwv_flow_imp.id(10634497095608036817)
,p_default_wizard_template=>wwv_flow_imp.id(10634497095608036817)
,p_default_menur_template=>wwv_flow_imp.id(10634509167320036844)
,p_default_listr_template=>wwv_flow_imp.id(10634497095608036817)
,p_default_irr_template=>wwv_flow_imp.id(10634492749137036809)
,p_default_report_template=>wwv_flow_imp.id(10634532090319036890)
,p_default_label_template=>wwv_flow_imp.id(10634567176256036956)
,p_default_menu_template=>wwv_flow_imp.id(10634571304765036965)
,p_default_calendar_template=>wwv_flow_imp.id(10634571424183036970)
,p_default_list_template=>wwv_flow_imp.id(10634565275575036950)
,p_default_nav_list_template=>wwv_flow_imp.id(10634556316878036937)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(10634556316878036937)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(10634554503219036934)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(10634445510800036687)
,p_default_dialogr_template=>wwv_flow_imp.id(10634442744640036681)
,p_default_option_label=>wwv_flow_imp.id(10634567176256036956)
,p_default_required_label=>wwv_flow_imp.id(10634568513955036959)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_imp.id(10634557268572036939)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
