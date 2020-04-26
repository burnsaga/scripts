@echo off
title Gradient Image Generator (up to 7 colors)
:: Prompt user for image size then interpolation method then gradient colors (either HEX e.g. '#000' or by ImageMagick color name e.g. 'black').
:: HEX Color Codes: https://htmlcolorcodes.com/
:: List of ImageMagick Color Names: https://imagemagick.org/script/color.php
:: Call `magick -list interpolate` for list of interpolation methods

:a

:: Reset defaults for when this script is run more than once before closing
set image_size=1920x1080
set interp_method=Catrom
set gradient=
set gradient_type1=gradient:angle=-90
set gradient_type2=gradient

:: Prompt for image_size
set /p image_size=Enter the output image dimensions (WxH) or press Enter to accept default of '1920x1080': 

if "%image_size%"=="" (
set image_size=1920x1080
)

:: Prompt for interp_method
set /p interp_method=Enter an interpolation method (e.g. average, bilinear, blend, catrom, mesh, nearest, spline) or press Enter to accept default of 'catrom': 

if "%interp_method%"=="" (
set interp_method=Catrom
)

:: Prompt for gradient_type
set /p gradient=Enter a gradient type (e.g. 'radial') or gradient angle (e.g. '45') or press Enter to accept default of linear -90 degree gradient: 

if "%gradient%"=="" (
set gradient_type1=gradient:angle=-90
set gradient_type2=gradient
set gradient=linear
) else if "%gradient%"=="radial" (
set gradient_type1=radial-gradient
set gradient_type2=radial-gradient
) else (
set gradient_type1=gradient:angle=%gradient%
set gradient_type2=gradient
set gradient=linear
)

:: Prompt for first color (warning user if no value entered)
:1
set /p color1=Enter the first gradient color: 

if not defined color1 (
        echo You must enter a color to continue!
        goto 1
)

:: Prompt for second color (warning user if no value entered)
:2
set /p color2=Enter the second gradient color: 

if not defined color2 (
        echo You must enter a color to continue!
        goto 2
)
:: Prompt for third color
set /p color3=Enter a third gradient color or press Enter to output current gradient: 

if "%color3%"=="" (
goto n3
) else (
goto y3
)

:y3
set /p color4=Enter a fourth gradient color or press Enter to output current gradient: 

if "%color4%"=="" (
goto n4
) else (
goto y4
)

:y4
set /p color5=Enter a fifth gradient color or press Enter to output current gradient: 

if "%color5%"=="" (
goto n5
) else (
goto y5
)

:y5
set /p color6=Enter a sixth gradient color or press Enter to output current gradient: 

if "%color6%"=="" (
goto n6
) else (
goto y6
)

:y6
set /p color7=Enter a seventh gradient color or press Enter to output current gradient: 

if "%color7%"=="" (
goto n7
) else (
goto y7
)

:y7
:: Call imagemagick to output 7-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% xc:%color6% xc:%color7% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%-%color5%-%color6%-%color7%_%image_size%.jpg
goto a

:n3
:: Call imagemagick to output 2-color gradient image
magick -size %image_size% -define %gradient_type1% %gradient_type2%:%color1%-%color2% gradient_%gradient%_%color1%-%color2%_%image_size%.jpg
goto a

:n4
:: Call imagemagick to output 3-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%_%image_size%.jpg
goto a

:n5
:: Call imagemagick to output 4-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%_%image_size%.jpg
goto a

:n6
:: Call imagemagick to output 5-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%:  -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%-%color5%_%image_size%.jpg
goto a

:n7
:: Call imagemagick to output 6-color gradient image
magick -size %image_size% -define %gradient_type1%  %gradient_type2%: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% xc:%color6% +append ) -clut ^
        gradient_%gradient%_%color1%-%color2%-%color3%-%color4%-%color5%-%color6%_%image_size%.jpg
goto a