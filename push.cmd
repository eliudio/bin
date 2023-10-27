@echo off
rem java -cp tools\target\eliudtools-1.0.0-jar-with-dependencies.jar io.eliud.git.Push
rem the above fails due to some ssh issue

call push-it bin
call push-it docs
call push-it eliud_core
call push-it eliud_generator
call push-it eliud_pkg_apps
call push-it eliud_pkg_chat
call push-it eliud_pkg_create
call push-it eliud_pkg_etc
call push-it eliud_pkg_feed
call push-it eliud_pkg_follow
call push-it eliud_pkg_fundamentals
call push-it eliud_pkg_medium
call push-it eliud_pkg_membership
call push-it eliud_pkg_notifications
call push-it eliud_pkg_pay
call push-it eliud_pkg_shop
call push-it eliud_pkg_text
call push-it eliud_pkg_wizards
call push-it eliud_pkg_workflow
call push-it eliud_stl_mona
call push-it firebase
call push-it firebase.legacy
call push-it juuwle
call push-it keys
call push-it minkey
call push-it open-resources
call push-it resources
call push-it tools