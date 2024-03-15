.PHONY: clean test package install_poetry

clean:
	cd apps/get_latest_version && $(MAKE) clean
	cd apps/update_product && $(MAKE) clean

test:
	cd apps/get_latest_version && $(MAKE) test
	cd apps/update_product && $(MAKE) test

package:
	cd apps/get_latest_version && $(MAKE) package
	cd apps/update_product && $(MAKE) package

install_poetry:
	( \
		echo 'Installing poetry...' && \
		curl -sSL https://install.python-poetry.org | POETRY_HOME=${HOME}/.poetry python3 - \
	)

build: clean install_poetry test package
