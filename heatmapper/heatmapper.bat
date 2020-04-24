@echo off
title Heatmap Gradient Image Generator (up to 7 colors)
:: Prompt user for image size then gradient colors (either HEX e.g. '#000' or by ImageMagick color name e.g. 'black'). The colors will be evenly distributed from left to right, and interpolated %interp_method%ly.
:: HEX Color Codes: https://htmlcolorcodes.com/
:: List of ImageMagick Color Names: https://imagemagick.org/script/color.php
:: Call `magick -list interpolate` for list of interpolation methods

:a
set /p image_size=Enter the output image dimensions (WxH) or press Enter to accept default of '1920x1080': 

if "%image_size%"=="" (
set image_size=1920x1080
)

set /p interp_method=Enter an interpolation method (e.g. Average, Bilinear, Blend, Catrom, Mesh, Nearest, Spline) or press Enter to accept default of 'Catrom': 

if "%interp_method%"=="" (
set interp_method=Catrom
)

set /p color1=Enter the first gradient color: 
set /p color2=Enter the second gradient color: 
set /p color3=Enter a third gradient color or 'n' to output current gradient: 

if %color3%==n (
goto n3
) else (
goto y3
)

:y3
set /p color4=Enter a fourth gradient color or 'n' to output current gradient: 

if %color4%==n (
goto n4
) else (
goto y4
)

:y4
set /p color5=Enter a fifth gradient color or 'n' to output current gradient: 

if %color5%==n (
goto n5
) else (
goto y5
)

:y5
set /p color6=Enter a sixth gradient color or 'n' to output current gradient: 

if %color6%==n (
goto n6
) else (
goto y6
)

:y6
set /p color7=Enter a seventh gradient color or 'n' to output current gradient: 

if %color7%==n (
goto n7
) else (
goto y7
)

:y7
:: Call imagemagick to output 7-color gradient image
magick -size %image_size% -define gradient:direction=west gradient: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% xc:%color6% xc:%color7% +append ) -clut ^
        gradient_%color1%-%color2%-%color3%-%color4%-%color5%-%color6%-%color7%_%image_size%.jpg
goto a

:n3
:: Call imagemagick to output 2-color gradient image
magick -size %image_size% -define gradient:direction=east gradient:%color1%-%color2% gradient_%color1%-%color2%_%image_size%.jpg

goto a

:n4
:: Call imagemagick to output 3-color gradient image
magick -size %image_size% -define gradient:direction=west gradient: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% +append ) -clut ^
        gradient_%color1%-%color2%-%color3%_%image_size%.jpg
goto a

:n5
:: Call imagemagick to output 4-color gradient image
magick -size %image_size% -define gradient:direction=west gradient: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% +append ) -clut ^
        gradient_%color1%-%color2%-%color3%-%color4%_%image_size%.jpg
goto a

:n6
:: Call imagemagick to output 5-color gradient image
magick -size %image_size% -define gradient:direction=west gradient: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% +append ) -clut ^
        gradient_%color1%-%color2%-%color3%-%color4%-%color5%_%image_size%.jpg
goto a

:n7
:: Call imagemagick to output 6-color gradient image
magick -size %image_size% -define gradient:direction=west gradient: -interpolate %interp_method% ^
        ( +size xc:%color1% xc:%color2% xc:%color3% xc:%color4% xc:%color5% xc:%color6% +append ) -clut ^
        gradient_%color1%-%color2%-%color3%-%color4%-%color5%-%color6%_%image_size%.jpg
goto a