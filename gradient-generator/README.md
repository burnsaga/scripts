# Gradient Generator

Outputs a linear or radial gradient image (up to 7 colors).

## Requirements

* ImageMagick

## Usage

1. Run the batch file and input image size, interpolation method, gradient type or rotation, and colors.

## Examples

### Backgrounds

![gradient_red-orange-yellow-green-blue-indigo-violet_catrom](/gradient-generator/images/gradient_red-orange-yellow-green-blue-indigo-violet_1920x1080_catrom.jpg)
* Interpolation: catrom
* Colors: red, orange, yellow, green, blue, indigo, violet

---

![gradient_red-orange-yellow-green-blue-indigo-violet_spline](/gradient-generator/images/gradient_red-orange-yellow-green-blue-indigo-violet_1920x1080_nearest.jpg)
* Interpolation: nearest
* Colors: red, orange, yellow, green, blue, indigo, violet

---

![gradient_linear_red-gray-black_catrom](/gradient-generator/images/gradient_linear_red-gray-black_1920x1080_catrom.jpg)
* Interpolation: catrom
* Colors: red, gray, black

---

![gradient_linear_red-gray-black_spline](/gradient-generator/images/gradient_linear_red-gray-black_1920x1080_spline.jpg)
* Interpolation: spline
* Colors: red, gray, black

### Heatmaps

#### Monochrome

![monochrome heatmap](/gradient-generator/images/gradient_linear_black-white_256x16.jpg)

#### 2-color

![2-color heatmap](/gradient-generator/images/gradient_linear_blue-red_256x16.jpg)

#### 5-color

![5-color heatmap](/gradient-generator/images/gradient_linear_blue-cyan-green-yellow-red_256x16.jpg)

#### 7-color

![7-color heatmap](/gradient-generator/images/gradient_linear_black-blue-cyan-green-yellow-red-white_256x16.jpg)