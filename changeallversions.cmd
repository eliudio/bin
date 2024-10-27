@echo off
if "%1" == "" goto usage

call changeversion eliud_core %1
call changeversion eliud_core_helpers %1
call changeversion eliud_core_main %1
call changeversion eliud_core_model %1
call changeversion eliud_generator %1
call changeversion eliud_pkg_apps %1
call changeversion eliud_pkg_chat %1
call changeversion eliud_pkg_chat_model %1
call changeversion eliud_pkg_create %1
call changeversion eliud_pkg_create_model %1
call changeversion eliud_pkg_etc %1
call changeversion eliud_pkg_etc_model %1
call changeversion eliud_pkg_feed %1
call changeversion eliud_pkg_feed_model %1
call changeversion eliud_pkg_follow %1
call changeversion eliud_pkg_follow_model %1
call changeversion eliud_pkg_fundamentals %1
call changeversion eliud_pkg_fundamentals_model %1
call changeversion eliud_pkg_medium %1
call changeversion eliud_pkg_medium_model %1
call changeversion eliud_pkg_membership %1
call changeversion eliud_pkg_membership_model %1
call changeversion eliud_pkg_notifications %1
call changeversion eliud_pkg_notifications_model %1
call changeversion eliud_pkg_pay %1
call changeversion eliud_pkg_shop %1
call changeversion eliud_pkg_shop_model %1
call changeversion eliud_pkg_text %1
call changeversion eliud_pkg_text_model %1
call changeversion eliud_pkg_wizards %1
call changeversion eliud_pkg_workflow %1
call changeversion eliud_pkg_workflow_model %1
call changeversion eliud_stl_mona %1
call changeversion eliud_stl_mona_model %1
call changeversion juuwle %1
call changeversion minkey %1

goto theend

:usage
echo pub.dev.cmd 
echo.
echo what?
echo script to change the version number of all packages and apps into a single version number
echo.
echo usage: changeallversions version
echo where: version is version to change your packages and apps (and references) into, e.g. 2.0.0
goto theend

:theend
echo bye bye