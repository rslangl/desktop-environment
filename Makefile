SUBDIRS := dmenu scroll st	#dwm

.PHONY: all $(SUBDIRS) clean install

all: $(SUBDIRS)

$(SUBDIRS):
	@echo "Building $@"
	$(MAKE) -C $@ clean install

clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean; \
	done

install:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir install; \
	done
