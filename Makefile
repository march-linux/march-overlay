install:
	cp -r march $(DESTDIR)/usr/share
	install -D march-reset $(DESTDIR)/usr/bin/march-reset
	install -D march-reset-user $(DESTDIR)/usr/bin/march-reset-user
	install -D march-reset-package $(DESTDIR)/usr/bin/march-reset-package
