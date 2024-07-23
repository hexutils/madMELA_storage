# madMela storage

This repository holds the source code that creates the Madgraph reweighting area for JHUGenMELA. __AFTER__ doing all the pre-processing required, simply run `python3 madMela_mergeProcessing.py` and a new version of the library will be dumped into the libSMEFTSIM area. Then, you can use the .so file for testing with MELA. Here are the steps you need to do:

## Compilation Instructions

1. Insert the following line into the makefile of each process you will add into SubProcesses (AKA the file `<AREA>/SubProcesses/makefile`) directly underneath the `allmatrix$(MENUM)py.so` target, as such:

```makefile
cpp: $(LIBDIR)/$(LIBRARY)
```

2. Move the __ORIGINAL__ `coupl.inc` and `input.inc` files into the archive folder with some sort of prefix denoting what it is in the form of `<AREA>_{coupl,input}.inc` (i.e. `qq4lBKG_coupl`). This is not a necessary step, but you should ___always___ record what was originally there!

3. If it does not exist, make a folder called `lib` under the area. This can be done as follows:

```bash
mkdir -p <AREA>/lib/
```

4. In `constants.py`, insert the desired name of your area alongside the folder path in the `area_to_merge` dictionary. It looks as such:

```python
areas_to_merge = {
    "ggFSIG": "ggF-SMEFTsim-standalone_all",
    "qq4lBKG": "qq4l-bkg-SMEFTsim-standalone_all",
    "qq4lSIG": "qq4l-sig-SMEFTsim-standalone_all",
    "qq4lBSI": "qq4l-SMEFTsim-standalone_all",
    ...
    "<YOUR DESIRED NAME>": "<FOLDER NAME>"
}
```

5. Once madMELA is fully compiled, check and see the following.
    - Has the overall `input.inc` in libSMEFTSIM changed? If so, update `madMELA.h` in JHUGenMELA to reflect the new ordering.
    - Did you miss anything? Place the new library within the JHUGenMELA area and try and run some basic MELA test to see if you have any undefined symbols.

Once you've done these things, you're ready to go!

