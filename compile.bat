@echo off
setlocal

rem Script for compiling the project into a ZIP file for distribution

set files=pack.mcmeta LICENSE MANUAL.md README.md data/
7z a -tzip better_carpets.zip %files%

set files_to_remove=data/bc/function/template data/bc/function/generate_carpets.py data/bc/predicate/generate_predicates.py data/bc/function/countdown/generate_progress_bar.py
7z d better_carpets.zip %files_to_remove%

endlocal
