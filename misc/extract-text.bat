title Extract Text from Image
:: Call tesseract to read text from an image and output it to a text file

set input=png
set input2=jpg
set input3=jpeg
set input4=gif
set lang=eng


for %%f in (*.%input%) do ( tesseract %%f %%~nf -l %lang% )
for %%f in (*.%input2%) do ( tesseract %%f %%~nf -l %lang% )
EXIT