.PHONY: setup update run test docs

setup:
	cd submodules/era-test-node && \
	make build-contracts

update:
	git submodule update

run:
	cd submodules/era-test-node && \
	make build-precompiles && \
	cargo run -- --show-calls=all --resolve-hashes run

test:
	cd test/rust && \
	cargo test ${PRECOMPILE}

# docs:
# 	cd docs && mdbook serve --open
