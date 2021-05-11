#############################################################################
# Makefile for building: chatRoom
# Generated by qmake (3.1) (Qt 6.0.3)
# Project:  chatRoom.pro
# Template: app
# Command: E:\Qt\QT6\6.0.3\msvc2019_64\bin\qmake.exe -o Makefile chatRoom.pro -spec win32-msvc "CONFIG+=qtquickcompiler"
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: release
install: release-install
uninstall: release-uninstall
QMAKE         = E:\Qt\QT6\6.0.3\msvc2019_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
QINSTALL      = E:\Qt\QT6\6.0.3\msvc2019_64\bin\qmake.exe -install qinstall
QINSTALL_PROGRAM = E:\Qt\QT6\6.0.3\msvc2019_64\bin\qmake.exe -install qinstall -exe
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
IDC           = idc
IDL           = midl
ZIP           = zip -r -9
DEF_FILE      = 
RES_FILE      = chatRoom_resource.res
SED           = $(QMAKE) -install sed
MOVE          = move
SUBTARGETS    =  \
		release \
		debug


release: $(MAKEFILE) FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release uninstall
debug: $(MAKEFILE) FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug uninstall

Makefile: chatRoom.pro ..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\win32-msvc\qmake.conf ..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\spec_pre.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\windows-desktop.conf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\windows_vulkan_sdk.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\windows-vulkan.conf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\msvc-desktop.conf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\qconfig.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_freetype.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_libpng.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_qobject_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designercomponents_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_entrypoint_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_fb_support_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_packetprotocol_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlcompiler_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldebug_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickparticles_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickshapes_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_tools_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uiplugin.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_zlib_private.pri \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qt_functions.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qt_config.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\win32-msvc\qmake.conf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\spec_post.prf \
		.qmake.stash \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\msvc-version.conf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\toolchain.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\default_pre.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\default_pre.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\resolve_config.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds_post.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\default_post.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qtquickcompiler.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\entrypoint.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\precompile_header.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\warn_on.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qt.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\resources_functions.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\resources.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\moc.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\opengl.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\uic.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qmake_use.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\file_copies.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\windows.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\testcase_targets.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\exceptions.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\yacc.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\lex.prf \
		chatRoom.pro \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Widgets.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Gui.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Network.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Core.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6EntryPoint.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\build_pass.prf \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Widgetsd.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Guid.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Networkd.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Cored.prl \
		..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6EntryPointd.prl
	$(QMAKE) -o Makefile chatRoom.pro -spec win32-msvc "CONFIG+=qtquickcompiler"
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\spec_pre.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\windows-desktop.conf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\windows_vulkan_sdk.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\windows-vulkan.conf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\msvc-desktop.conf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\qconfig.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_freetype.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_libpng.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_qobject_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designercomponents_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_entrypoint_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_fb_support_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_packetprotocol_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlcompiler_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldebug_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldevtools_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickparticles_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickshapes_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_tools_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uiplugin.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_zlib_private.pri:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qt_functions.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qt_config.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\win32-msvc\qmake.conf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\spec_post.prf:
.qmake.stash:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\common\msvc-version.conf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\toolchain.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\default_pre.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\default_pre.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\resolve_config.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds_post.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\default_post.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qtquickcompiler.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\entrypoint.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\precompile_header.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\warn_on.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qt.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\resources_functions.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\resources.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\moc.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\opengl.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\uic.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\qmake_use.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\file_copies.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\win32\windows.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\testcase_targets.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\exceptions.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\yacc.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\lex.prf:
chatRoom.pro:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Widgets.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Gui.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Network.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Core.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6EntryPoint.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\mkspecs\features\build_pass.prf:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Widgetsd.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Guid.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Networkd.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6Cored.prl:
..\..\..\Qt\QT6\6.0.3\msvc2019_64\lib\Qt6EntryPointd.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile chatRoom.pro -spec win32-msvc "CONFIG+=qtquickcompiler"

qmake_all: FORCE

make_first: release-make_first debug-make_first  FORCE
all: release-all debug-all  FORCE
clean: release-clean debug-clean  FORCE
distclean: release-distclean debug-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash

release-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocclean
debug-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocclean
mocclean: release-mocclean debug-mocclean

release-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocables
debug-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocables
mocables: release-mocables debug-mocables

check: first

benchmark: first
FORCE:

$(MAKEFILE).Release: Makefile
$(MAKEFILE).Debug: Makefile