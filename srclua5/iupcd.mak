PROJNAME = iup
LIBNAME = iupluacd

IUP := ..

OPT = YES
# To not link with the Lua dynamic library in UNIX
NO_LUALINK = Yes
# To use a subfolder with the Lua version for binaries
LUAMOD_DIR = Yes

USE_CD = YES
USE_IUPLUA = Yes
USE_CDLUA = YES
USE_IUP3 = YES

INCLUDES = ../include
LDIR = ../lib/$(TEC_UNAME)
DEFINES = CD_NO_OLD_INTERFACE
SRC = iuplua_cd.c
DEF_FILE = iupluacd.def

ifdef USE_LUA53
  LUASFX = 53
else
ifdef USE_LUA52
  LUASFX = 52
else
  USE_LUA51 = Yes
  LUASFX = 51
endif
endif

LIBNAME := $(LIBNAME)$(LUASFX)
LIBS = iuplua$(LUASFX)

ifneq ($(findstring MacOS, $(TEC_UNAME)), )
  LIBS:=
  USE_CDLUA:=
endif
