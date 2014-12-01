#*************************************************************************/
#*                       This file is part of:                           */
#*                           GODOT ENGINE                                */
#*                    http://www.godotengine.org                         */
#*************************************************************************/
# Simple makefile to give support for external C/C++ IDEs                */
#*************************************************************************/

# Default build
all: debug

# Release Build
release:
	scons target="release" godot

# Profile Build
profile:
	scons target="profile" godot

# Debug Build
debug:
	# Debug information (code size gets severely affected):
	# g: Default (same as g2)
	# g0: no debug info
	# g1: minimal info
	# g3: maximal info
	/usr/local/Cellar/scons/2.3.2_1/bin/scons target="debug" CCFLAGS="-g" platform=osx bits=64

clean:
	scons -c godot
