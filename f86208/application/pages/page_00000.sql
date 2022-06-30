prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_imp.id(10634594420264037039)
,p_name=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'AMMAR.YASIR6777@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220520094940'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10634599404470536652)
,p_name=>'notifications'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10634599503143536653)
,p_event_id=>wwv_flow_imp.id(10634599404470536652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.NOTIFICATION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "refresh": 0,',
'    "mainIcon": "fa-bell",',
'    "mainIconColor": "white",',
'    "mainIconBackgroundColor": "rgba(70,70,70,0.9)",',
'    "mainIconBlinking": false,',
'    "counterBackgroundColor": "rgb(232, 55, 55 )",',
'    "counterFontColor": "white",',
'    "linkTargetBlank": false,',
'    "showAlways": false,',
'    "browserNotifications": {',
'        "enabled": true,',
'        "cutBodyTextAfter": 100,',
'        "link": false',
'    },',
'    "accept": {',
'        "color": "#44e55c",',
'        "icon": "fa-check"',
'    },',
'    "decline": {',
'        "color": "#b73a21",',
'        "icon": "fa-close"',
'    },',
'    "hideOnRefresh": true',
'}'))
,p_attribute_02=>'notification-menu'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT /* sets the icon of the list item */',
'    ''fa-exclamation-triangle'' AS NOTE_ICON, ',
'    /* sets the color of the list icon */',
'    ''rgb(192,0,15)'' AS NOTE_ICON_COLOR, ',
'    /* sets the title of the list item (html possible) */',
'    NAME AS NOTE_HEADER,',
'    /* sets the text of the list item (html possible */',
'    to_char(TOTAL_PRICE) AS NOTE_TEXT, ',
'    /* set the link when click on list item ',
'    ''javascript:alert("Click on Notification Entry");void(0);'' AS NOTE_LINK, */',
'    NULL AS NOTE_LINK,',
'    /* sets the color of the left box shadow */',
'    ''rgb(192,0,15)'' AS NOTE_COLOR,',
'    /* Link or js that is executed when press accept link (if left or null not accept is shown  ',
'    ''javascript:alert("Accepted");void(0);'' AS NOTE_ACCEPT,*/',
'    NULL AS NOTE_ACCEPT,',
'    /* Link or js that is executed when press decline link (if left or null not decline is shown  ',
'    ''javascript:alert("Declined");void(0);'' AS NOTE_DECLINE,*/',
'    NULL AS NOTE_DECLINE,',
'    /* When enable Browser Notifications in ConfigJSON then you can select which notifications should not be fire browser not. */',
'    0 AS NO_BROWSER_NOTIFICATION',
'FROM',
'    DOCTOR ',
'    where TOTAL_PRICE > 5000000',
'UNION ALL',
'SELECT',
'    ''fa-wrench'' AS NOTE_ICON,',
'    ''#3e6ebc'' AS NOTE_ICON_COLOR,',
unistr('    ''\0627\0644\0627\0637\0628\0627\0621 \0627\0644\0645\0628\0627\0644\063A \0639\0644\064A\0647\0645 \0627\0639\0644\0649 \0645\0646 5000000'' AS NOTE_HEADER,'),
unistr('    ''\0627\0644\0631\062C\0627\0621 \0645\062A\0627\0628\0639\0629 \0627\0644\0627\0637\0628\0627\0621'' AS NOTE_TEXT,'),
'    NULL AS NOTE_LINK,',
'    ''#3e6ebc'' AS NOTE_COLOR,',
'    NULL AS NOTE_ACCEPT,',
'    NULL AS NOTE_DECLINE,',
'    /* When enable Browser Notifications in ConfigJSON then you can select which notifications should not be fire browser not. */',
'    0 AS NO_BROWSER_NOTIFICATION',
'FROM',
'    DUAL',
'WHERE',
'    1 = 1',
'    --ROUND(',
'    --    DBMS_RANDOM.VALUE(',
'    --        1,',
'    --        2',
'    --    )',
'    --)',
'    '))
,p_attribute_05=>'Y'
);
wwv_flow_imp.component_end;
end;
/
