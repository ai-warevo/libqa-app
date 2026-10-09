BUILD_DIR = build
CMAKE_FLAGS = -DCMAKE_BUILD_TYPE=Release

.PHONY: all configure build clean run

# Дефолтная цель: сборка всего приложения вместе с зависимостью
all: build

# 1. Конфигурация (в этот момент FetchContent скачивает/находит util)
configure:
	cmake -B $(BUILD_DIR) -S . $(CMAKE_FLAGS)

# 2. Компиляция MainApp и линковка с Utility::lib
build: configure
	cmake --build $(BUILD_DIR)

# 3. Бесшовный запуск основного приложения
run: build
	@echo "--- Запуск MainApp ---"
	@if [ -f $(BUILD_DIR)/main_app ]; then \
		$(BUILD_DIR)/main_app; \
	else \
		$(BUILD_DIR)/Debug/main_app.exe; \
	fi

clean:
	rm -rf $(BUILD_DIR)
