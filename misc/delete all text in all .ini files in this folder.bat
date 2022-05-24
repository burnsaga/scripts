REM © Copyright 2022 Joe Burns
REM This deletes all text in all '.ini' files in the folder where this Batch script is located.
REM Reference: https://stackhowto.com/batch-file-to-get-current-directory/
REM Reference: https://stackoverflow.com/questions/19633676/how-to-delete-content-from-a-text-file-using-windows-batch-script

TITLE Delete all text in all '.ini' files in this folder

@echo off

for %%F in (*.ini) do (break>"%%~nF.ini")