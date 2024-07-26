# madMela storage

This repository holds the source code that creates the Madgraph reweighting area for JHUGenMELA. __AFTER__ doing all the pre-processing required, simply run `python3 madMela_mergeProcessing.py` and a new version of the library will be dumped into the libSMEFTSIM area. Then, you can use the .so file for testing with MELA. Here are the steps you need to do:

## WARNINGS
The __ORIGINAL__ `coupl.inc` and `input.inc` files are in the archive folder with some sort of prefix denoting what it is in the form of `<AREA>_{coupl,input}.inc` (i.e. `qq4lBKG_coupl`). DO NOT DELETE THEM!

## Compilation Instructions

1. If it does not exist, make a folder called `lib` under the area and make a file to make sure git knows to keep the folder. This can be done as follows:

```bash
mkdir -p <AREA>/lib/
touch <AREA>/lib/.gittouch
```

2. In `constants.py`, insert the desired name of your area alongside the folder path in the `area_to_merge` dictionary. It looks as such:

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

3. Once madMELA is fully compiled, check and see the following.
    - Has the overall `input.inc` in libSMEFTSIM changed? If so, update `madMELA.h` in JHUGenMELA to reflect the new ordering.
    - Did you miss anything? Place the new library within the JHUGenMELA area and try and run some basic MELA test to see if you have any undefined symbols.

Once you've done these things, you're ready to go!

