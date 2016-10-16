/*
 Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function (config) {
    /*config.toolbar = 'Define';//自定义工具栏

    config.toolbar_Define = [

        ['Source', '-', 'Save', 'NewPage'],

        ['Cut', 'Copy', 'Paste', 'PasteText'],

        ['Font', '-', 'Size', 'Blod', '-'],

        ['matheqn']


    ];*/


    config.toolbar = "Full";
    config.toolbar_Full = [
        ['Bold','Italic','Underline','Strike','Cut','Copy','Paste','PasteText'],
        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
        ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
        ['TextColor', 'BGColor','Format', 'Font', 'FontSize','Replace','-','SelectAll','RemoveFormat','Maximize']
    ];


};
