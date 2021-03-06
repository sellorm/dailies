help: ## Display this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-17s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

all: prep version build archive ## Run the entire process (CI only)

prep: ## makes the output directory
	bash projctl prep

version: ## updates the version with the build number
	bash projctl version

build: ## Build the package
	bash projctl build

archive: ## move the package outputs to the 'output' directory
	bash projctl archive

build-site: ## build the pkgdown site for the package
	R -e "pkgdown::build_site()"

clean:
	-rm -r output

.PHONY: all prep version data build archive clean build-site
