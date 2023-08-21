@echo off
call gen.cmd eliud_core %1
call gen.cmd eliud_stl_mona %1
call gen.cmd eliud_pkg_create %1
call gen.cmd eliud_pkg_medium %1
call eliud_pkg_chat 
call eliud_pkg_text %1
call eliud_pkg_feed %1
call eliud_pkg_fundamentals %1
call eliud_pkg_membership %1
call eliud_pkg_notifications %1
call eliud_pkg_pay %1
call eliud_pkg_shop %1
call eliud_pkg_workflow %1
call eliud_pkg_follow %1
call eliud_pkg_etc %1

