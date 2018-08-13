##############################################################
#
# glTest by lyk personal
#
##############################################################


TARGET = glTest

INCLUDE_PATH	:=   -I/usr/include/ -I/usr/lib/
INCLUDE = $(INCLUDE_PATH)

LIBS := -lGL -lGLU -lglut -ldl -lrt -lm 

OBJ_OUTPUT_PATH=/work/practice/output
BINARY_PATH=/work/practice/output/bin

CPP_SRC_FILES = glTest.cpp
CPP_OBJ_FILES = $(patsubst %.cpp, %.o, $(CPP_SRC_FILES))

OBJ_FILES = $(patsubst %.o, $(OBJ_OUTPUT_PATH)/%.o, $(CPP_OBJ_FILES))

CPPFLAGS +=  $(INCLUDE) -Wno-deprecated

LDFLAGS_SHARE += $(LIBS)

LDFLAGS += $(LIBS)

.PHONY: build_env build_begin build build_end compile link strip_all

all: build_env build_begin build build_end strip_all

build_env:	
	@mkdir -p $(OBJ_OUTPUT_PATH)
	@mkdir -p $(BINARY_PATH)

build_begin:
	echo "[$(TARGET)]: Building..." 

build: compile link

build_end:
	echo "[$(TARGET)]: Build done!" 

strip_all:
	@(strip -s $(BINARY_PATH)/$(TARGET)) 

compile: $(CPP_OBJ_FILES)

#link
link:
	echo "[$(TARGET)]: Linking $(TARGET) ..."
	gcc -o $(BINARY_PATH)/$(TARGET) $(OBJ_FILES) $(LDFLAGS)
	

#compile step 2:
$(CPP_OBJ_FILES): %.o: %.cpp
	echo "[$(TARGET)]: Compiling $(notdir $^) ..."
	gcc -c $(CPPFLAGS) $< -o $(OBJ_OUTPUT_PATH)/$@
	echo "cpp object finish end"



