@ECHO OFF
TITLE Gradient Image Generator (up to 7 colors)
:: Prompt user for image size then interpolation method then gradient colors (either HEX e.g. '#000' or by ImageMagick color name e.g. 'black').
:: HEX Color Codes: https://htmlcolorcodes.com/
:: List of ImageMagick Color Names: https://imagemagick.org/script/color.php
:: Call `magick -list interpolate` for list of interpolation methods

:a

:: Reset defaults for when this script is run more than once before closing
SET image_size=1920x1080
SET interp_method=Catrom
SET gradient=
SET gradient_type1=gradient:angle=-90
SET gradient_type2=gradient
SET color1=
SET color2=
SET color3=
SET color4=
SET color5=
SET color6=
SET color7=

:: Prompt for image_size
SET /p image_size=Enter the output image dimensions (WxH) or press Enter to accept default of '1920x1080': 

IF "%image_size%"=="" (
SET image_size=1920x1080
)

:: Prompt for interp_method
SET /p interp_method=Enter an interpolation method (e.g. average, bilinear, blend, catrom, mesh, nearest, spline) or press Enter to accept default of 'catrom': 

IF "%interp_method%"=="" (
SET interp_method=Catrom
)

:: Prompt for gradient_type
SET /p gradient=Enter a gradient type (e.g. 'radial') or gradient angle (e.g. '45') or press Enter to accept default of linear -90 degree gradient: 

IF "%gradient%"=="" (
SET gradient_type1=gradient:angle=-90
SET gradient_type2=gradient
SET gradient=linear
) ELSE IF "%gradient%"=="radial" (
SET gradient_type1=radial-gradient
SET gradient_type2=radial-gradient
) ELSE (
SET gradient_type1=gradient:angle=%gradient%
SET gradient_type2=gradient
SET gradient=linear
)

:: Prompt for first color (warning user if no value entered)
:1
SET /p color1=Enter the first gradient color: 

IF NOT DEFINED color1 (
        ECHO You must enter a color to continue!
        GOTO 1
)

:: Prompt for second color (warning user if no value entered)
:2
SET /p color2=Enter the second gradient color: 

IF NOT DEFINED color2 (
        ECHO You must enter a color to continue!
        GOTO 2
)
:: Prompt for third color
SET /p color3=Enter a third gradient color or press Enter to output current gradient: 

IF "%color3%"=="" (
GOTO n3
) ELSE (
GOTO y3
)

:y3
SET /p color4=Enter a fourth gradient color or press Enter to output current gradient: 

IF "%color4%"=="" (
GOTO n4
) ELSE (
GOTO y4
)

:y4
SET /p color5=Enter a fifth gradient color or press Enter to output current gradient: 

IF "%color5%"=="" (
GOTO n5
) ELSE (
GOTO y5
)

:y5
SET /p color6=Enter a sixth gradient color or press Enter to output current gradient: 

IF "%color6%"=="" (
GOTO n6
) ELSE (
GOTO y6
)

:y6
SET /p color7=Enter a seventh gradient color or press Enter to output current gradient: 

IF "%color7%"=="" (
GOTO n7
) ELSE (
GOTO y7
)

:y7
:: Call imagemagick to output 7-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% xc:%color6% xc:%color7% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%-%color5%-%color6%-%color7%_%image_size%.jpg
GOTO a

:n3
:: Call imagemagick to output 2-color gradient image
magick -size %image_size% -define %gradient_type1% %gradient_type2%:%color2%-%color1% gradient_%gradient%_%color1%-%color2%_%image_size%.jpg
GOTO a

:n4
:: Call imagemagick to output 3-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%_%image_size%.jpg
GOTO a

:n5
:: Call imagemagick to output 4-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%_%image_size%.jpg
GOTO a

:n6
:: Call imagemagick to output 5-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%:  -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%-%color5%_%image_size%.jpg
GOTO a

:n7
:: Call imagemagick to output 6-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% xc:%color6% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%-%color5%-%color6%_%image_size%.jpg
GOTO a