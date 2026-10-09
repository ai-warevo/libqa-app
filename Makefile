BUILD_DIR = build
CMAKE_FLAGS = -DCMAKE_BUILD_TYPE=Release

.PHONY: all configure build clean run

all: build

configure:
	cmake -B $(BUILD_DIR) -S . $(CMAKE_FLAGS)

build: configure
	cmake --build $(BUILD_DIR)

run: build
	@echo "--- Запуск MainApp ---"
	@if [ -f $(BUILD_DIR)/main_app ]; then \
		$(BUILD_DIR)/main_app; \
	else \
		$(BUILD_DIR)/Debug/main_app.exe; \
	fi

clean:
	rm -rf $(BUILD_DIR)
