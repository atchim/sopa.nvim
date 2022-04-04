FNL = $(shell find fnl/ -type f -name '*.fnl')
LUA = $(patsubst fnl/%.fnl, lua/%.lua, $(FNL))

all: $(LUA)

lua/%.lua: fnl/%.fnl
	mkdir -p $(dir $@)
	fennel -c $< > $@

.PHONY: all
