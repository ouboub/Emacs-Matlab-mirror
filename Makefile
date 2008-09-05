# Automatically Generated Makefile by EDE.
# For use with: make
#
# DO NOT MODIFY THIS FILE OR YOUR CHANGES MAY BE LOST.
# EDE is the Emacs Development Environment.
# http://cedet.sourceforge.net/ede.shtml
#

top=
ede_FILES=Project.ede Makefile

EMACS=emacs
LOADPATH= ../cedet/common/  ../cedet/eieio/\
    ../cedet/semantic/
LOADDEFS=matlab-load.el
LOADDIRS=.
misc_MISC=ChangeLog ChangeLog.old1 ChangeLog.old2 INSTALL README
lisp_LISP=matlab.el mlint.el tlc.el
EMACS=emacs
cedet_LISP=semantic-matlab.el semanticdb-matlab.el
VERSION=1.0
DISTDIR=$(top)matlab-emacs-$(VERSION)



all: autoloads misc lisp cedet

.PHONY: autoloads
autoloads: 
	@echo "(add-to-list 'load-path nil)" > $@-compile-script
	for loadpath in . ${LOADPATH}; do \
	   echo "(add-to-list 'load-path \"$$loadpath\")" >> $@-compile-script; \
	done;
	@echo "(require 'cedet-autogen)" >> $@-compile-script
	"$(EMACS)" -batch --no-site-file -l $@-compile-script -f cedet-batch-update-autoloads $(LOADDEFS) $(LOADDIRS)

misc: 
	@

.PHONY: lisp
lisp: $(lisp_LISP)
	@echo "(add-to-list 'load-path nil)" > $@-compile-script
	for loadpath in . ${LOADPATH}; do \
	   echo "(add-to-list 'load-path \"$$loadpath\")" >> $@-compile-script; \
	done;
	@echo "(setq debug-on-error t)" >> $@-compile-script
	"$(EMACS)" -batch --no-site-file -l $@-compile-script -f batch-byte-compile $^

.PHONY: cedet
cedet: $(cedet_LISP)
	@echo "(add-to-list 'load-path nil)" > $@-compile-script
	for loadpath in . ${LOADPATH}; do \
	   echo "(add-to-list 'load-path \"$$loadpath\")" >> $@-compile-script; \
	done;
	@echo "(setq debug-on-error t)" >> $@-compile-script
	"$(EMACS)" -batch --no-site-file -l $@-compile-script -f batch-byte-compile $^

tags: 


clean:
	rm -f *.elc

.PHONY: dist

dist: autoloads
	rm -rf $(DISTDIR)
	mkdir $(DISTDIR)
	cp matlab-load.el $(misc_MISC) $(lisp_LISP) $(cedet_LISP) $(ede_FILES) $(DISTDIR)
	tar -cvzf $(DISTDIR).tar.gz $(DISTDIR)
	rm -rf $(DISTDIR)

Makefile: Project.ede
	@echo Makefile is out of date!  It needs to be regenerated by EDE.
	@echo If you have not modified Project.ede, you can use 'touch' to update the Makefile time stamp.
	@false



# End of Makefile
