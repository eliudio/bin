@echo off
if "%1" == "" goto usage
echo ********************************** %1 **********************************

cd %1
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,6%
set string=%ldt::=-%
set filename=%string: =-%
call pubviz -i lints,get_thumbnail_video,universal_html,flutter_inappwebview,flutter_widget_from_html,flutter_widget_from_html_core,html,html_editor_enhanced,url_launcher,analyzer,build,glob,build_runner,getwidget,path,flutter_test,beta,another_flushbar,args,bloc,build_cli_annotations,camera,characters,checked_yaml,chewie,chips_input,cli_util,cloud_firestore,cloud_functions,collection,crop_your_image,crypto,datetime_picker_formfield,datetime_picker_formfield_new,delayed_display,easy_image_viewer,equatable,expandable,fast_image_resizer,file_picker,firebase_auth,firebase_core,firebase_storage,flutter,flutter_bloc,flutter_colorful_tab,flutter_colorpicker,flutter_launcher_icons,flutter_lints,flutter_markdown,flutter_signin_button,google_fonts,google_sign_in,gviz,http,image,image_picker,intl,io,json_annotation,material_color_utilities,meta,path_provider,pdfx_plugin,percent_indicator,photo_view,pinch_zoom,pointer_interceptor,pub_semver,pubspec_parse,pubviz,sign_in_with_apple,split_view,stack_trace,string_scanner,transparent_image,tuple,uuid,vector_math,video_player,video_thumbnail,web,yaml -d --format=dot print > c:\temp\%filename%.dot
if errorlevel 1 goto somethingbad
echo File produced with pubviz: c:\temp\%filename%.dot
call dot -Tjpg c:\temp\%filename%.dot -o c:\temp\%filename%.jpg
if errorlevel 1 goto somethingbad
echo File produced with dot: c:\temp\%filename%.jpg
copy c:\temp\%filename%.jpg depends.jpg
cd ..
goto end

:somethingbad
echo Something bad occured during running depends. Debug
cd ..
goto end

:usage
echo depends.cmd 
echo.
echo what?
echo generates dependency diagram for a package
echo.
echo usage: depends.cmd subdirectory
echo where: subdirectory is the directory for which to generate this dependency diagram
echo result: depends.jpg file in that directory is created/updated
echo.
echo example
echo cd \eliud
echo bin\depends.cmd eliud_core
goto end

:end
echo bye bye
