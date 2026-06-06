STB_INCLUDE_PATH = /home/jerry/Libraries/stb
TINYOBJ_INCLUDE_PATH = /home/jerry/Libraries/tinyobjloader

CFLAGS = -std=c++17 -O3 -I$(STB_INCLUDE_PATH) -I$(TINYOBJ_INCLUDE_PATH)
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest