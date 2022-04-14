CC = emcc
SRCS = triangle.cpp
FILES = $(addprefix src_cpp/, $(SRCS)) # Add 'src/' to each source
EOPT = USE_WEBGL2=1 FULL_ES3=1 USE_GLFW=3 WASM=1 # Emscripten specific options
EOPTS = $(addprefix -s $(EMPTY), $(EOPT))	# Add '-s ' to each option

TARGET = public/index.html

.PHONY: wasm
wasm:
	$(CC) $(FILES) -Os $(EOPTS) --shell-file public/shell_minimal.html -o $(TARGET)