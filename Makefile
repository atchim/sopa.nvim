src = $(shell find fnl/ -type f -name '*.fnl')
out = $(patsubst fnl/%.fnl, lua/%.lua, $(src))

all: $(out)

clean: lua
	rm -rf $<

lua/%.lua: fnl/%.fnl
	mkdir -p $(dir $@)
	fennel -c $< > $@

.PHONY: all
