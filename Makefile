DESTDIR=~/Library/Developer/Xcode/Templates/File\ Templates
IOSDESTDIR=$(DESTDIR)/Cocoa\ Touch
OSXDESTDIR=$(DESTDIR)/Cocoa
IOSTEMPLATE="OCUnit test case (iOS).xctemplate"
OSXTEMPLATE="OCUnit test case (OS X).xctemplate"

install:
	mkdir -p $(IOSDESTDIR)
	cp -R $(IOSTEMPLATE) $(IOSDESTDIR)
	mkdir -p $(OSXDESTDIR)
	cp -R $(OSXTEMPLATE) $(OSXDESTDIR)

uninstall:
	rm -rf $(IOSDESTDIR)/$(IOSTEMPLATE)
	rm -rf $(OSXDESTDIR)/$(OSXTEMPLATE)
