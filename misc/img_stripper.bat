REM removes EXIF/txt2img data (to avoid AI-origin detection)

convert -strip input.png output_stripped.png