TITLE Extract Text from Image
:: Call tesseract to read text from an image and output it to a text file

SET input=png
SET lang=eng
SET input2=jpg
SET input3=jpeg
SET input4=gif

for %%f in (*.%input%) do ( tesseract %%f %%~nf -l %lang% )
for %%f in (*.%input2%) do ( tesseract %%f %%~nf -l %lang% )
EXIT