DESTDIR=~/Library/Developer/Xcode/Templates/File\ Templates
IOSDESTDIR=$(DESTDIR)/Cocoa\ Touch
OSXDESTDIR=$(DESTDIR)/Cocoa
IOSTEMPLATE="OCUnit test case (iOS).xctemplate"
IOS7TEMPLATE="OCUnit test case (iOS7).xctemplate"
OSXTEMPLATE="OCUnit test case (OS X).xctemplate"

install:
	mkdir -p $(IOSDESTDIR)
	cp -R $(IOSTEMPLATE) $(IOSDESTDIR)
	mkdir -p $(IOSDESTDIR)
	cp -R $(IOS7TEMPLATE) $(IOSDESTDIR)
	mkdir -p $(OSXDESTDIR)
	cp -R $(OSXTEMPLATE) $(OSXDESTDIR)

uninstall:
	rm -rf $(IOSDESTDIR)/$(IOSTEMPLATE)
	rm -rf $(IOSDESTDIR)/$(IOS7TEMPLATE)
	rm -rf $(OSXDESTDIR)/$(OSXTEMPLATE)
