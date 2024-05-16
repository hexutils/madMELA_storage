include ../Source/make_opts
SHELL = /bin/bash
LIBDIR = ../lib/
PROG   = check
LINKLIBS_ME =  -L../lib/ -ldhelas -lmodel
LINKLIBS_ALL =  -L../lib/ -lmatrix -ldhelas -lmodel
LIBS = $(LIBDIR)libdhelas.$(libext) $(LIBDIR)libmodel.$(libext)
PROCESS=  allmatrix.o
LIBRARY = libmatrix.a

# For python linking (require f2py part of numpy)
ifeq ($(origin MENUM),undefined)
  MENUM=2
endif

%$(MENUM)py.so: %/matrix.f
	$(F2PY) --f77exec=$(FC) $(LINKLIBS_ME) -c $^ -m $(patsubst %/matrix.f,%$(MENUM)py,$^)
	
all_matrix$(MENUM)py.so: $(LIBDIR)/$(LIBRARY) all_matrix.f
	$(F2PY) --f77exec=$(FC) $(LINKLIBS_ALL) -c all_matrix.f -m all_matrix$(MENUM)py

    
allmatrix$(MENUM)py.so: $(patsubst %/matrix.f,%$(MENUM)py.so,$(wildcard */matrix.f)) all_matrix$(MENUM)py.so
	for lib in $(patsubst %.so,%,$^); do \
		printf "try:\n    from $$lib import *\nexcept:\n    from .$$lib import *\n" >> allmatrix$(MENUM)py.py; \
	done

cpp:  $(LIBDIR)/$(LIBRARY)  all_matrix.o
	g++ -ggdb -Wpadded -Wpacked -malign-double -mpreferred-stack-boundary=8 -fPIC -lgfortran all_matrix.f */matrix.f -L ../lib/ -ldhelas -lmodel -lmatrix -shared -ffixed-line-length-0 -o libggF_SMEFTsim.so

test: $(LIBDIR)/$(LIBRARY)  all_matrix.o
	g++ test_pdg_order.cpp -g -Wpadded -Wpacked -malign-double -mpreferred-stack-boundary=8 -lgfortran all_matrix.f */matrix.f -L ../lib/ -ldhelas -lmodel -lmatrix -ffixed-line-length-0

$(LIBDIR)/$(LIBRARY): $(patsubst %.f,%.o,$(wildcard */matrix.f))  all_matrix.o
	$(call CREATELIB, $@, $^)  

