####################################################################################################
## Variables
####################################################################################################
RACO         := raco
RACKET       := racket
MAIN         ?= main.rkt
ECHO         := @echo
DOC_DIR      := docs
DOC_OUT_DIR  := $(DOC_DIR)/html
SRC_DIR      := template-lib
TEST_DIR     := tests
EXAMPLES_DIR := examples
COVERAGE_DIR := coverage
COLLECTION_NAME := $(notdir $(SRC_DIR))

SHELL := /bin/bash
.SHELLFLAGS := -e -o pipefail -c

.DEFAULT_GOAL := help

.PHONY: help
help: ## Show help message for each target
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; \
	{printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

####################################################################################################
## Racket Targets
####################################################################################################
.PHONY: format
format: ## Format the Racket code
	$(ECHO) "Formatting Racket files..."
	$(RACO) fmt --width 100 $(SRC_DIR)/*.rkt $(TEST_DIR)/*.rkt $(MAIN) $(EXAMPLES_DIR)/*.rkt

.PHONY: test
test: ## Run the tests
	$(ECHO) "Running tests..."
	$(RACO) test $(TEST_DIR)

.PHONY: coverage
coverage: ## Run the tests with coverage
	$(ECHO) "Running tests with coverage..."
	$(RACO) cover -f html -d $(COVERAGE_DIR) -b $(TEST_DIR) $(SRC_DIR) *.rkt

.PHONY: lint
lint: ## Run the linter checks
	$(ECHO) "Running linter checks..."
	$(RACO) review $(SRC_DIR)/*.rkt $(TEST_DIR)/*.rkt $(MAIN)

.PHONY: docs
docs: ## Generate the documentation files
	$(ECHO) "Generating documentation..."
	$(RACO) scribble --htmls --dest $(DOC_OUT_DIR) $(DOC_DIR)/index.scrbl

.PHONY: clean
clean: ## Remove build artifacts and generated files
	$(ECHO) "Cleaning up..."
	rm -rf compiled/ $(SRC_DIR)/compiled $(TEST_DIR)/compiled $(EXAMPLES_DIR)/compiled $(DOC_OUT_DIR) $(COVERAGE_DIR)

.PHONY: install-deps
install-deps: ## Install the development dependencies (for Debian-based systems)
	$(ECHO) "Installing dependencies..."
	sudo apt-get update
	sudo apt-get install -y snapd
	sudo snap install racket --classic
	$(RACO) pkg install --auto --skip-installed fmt intellij cover review

.PHONY: examples
examples: ## Run the examples
	$(ECHO) "Compiling and running examples..."
	$(RACO) make $(EXAMPLES_DIR)/example.rkt
	$(RACKET) $(EXAMPLES_DIR)/example.rkt

.PHONY: build
build: ## Build the application entry point
	$(ECHO) "Building the application..."
	$(RACO) make $(MAIN)

.PHONY: run
run: build ## Run the application
	$(ECHO) "Running the application..."
	$(RACKET) $(MAIN)

.PHONY: install
install: ## Install the application or library package
	$(ECHO) "Installing the package from current directory..."
	$(RACO) pkg install --auto --link --name $(COLLECTION_NAME) $(shell pwd)

.PHONY: uninstall
uninstall: ## Uninstall the application or library package
	$(ECHO) "Uninstalling the package $(COLLECTION_NAME)..."
	$(RACO) pkg remove $(COLLECTION_NAME)
