# Heatmap Gradient Generator

Outputs a linear or radial gradient image (up to 7 colors).

## Requirements

* ImageMagick

## Usage

1. Run the batch file and input image size, interpolation method, and colors.

## Examples

### Backgrounds

![gradient_red-orange-yellow-green-blue-indigo-violet_catrom](/gradient-generator/images/gradient_red-orange-yellow-green-blue-indigo-violet_1920x1080-catrom.jpg)
* Interpolation: catrom
* Colors: red, orange, yellow, green, blue, indigo, violet

---

![gradient_red-orange-yellow-green-blue-indigo-violet_spline](/gradient-generator/images/gradient_red-orange-yellow-green-blue-indigo-violet_1920x1080-nearest.jpg)
* Interpolation: nearest
* Colors: red, orange, yellow, green, blue, indigo, violet

---

![gradient_linear_turquoise-pink-white_catrom](/gradient-generator/images/gradient_linear_turquoise-pink-white_1920x1080-catrom.jpg)
* Interpolation: catrom
* Colors: turquoise, pink, white

---

![gradient_linear_turquoise-pink-white_spline](/gradient-generator/images/gradient_linear_turquoise-pink-white_1920x1080-spline.jpg)
* Interpolation: spline
* Colors: turquoise, pink, white

### Heatmaps

#### Monochrome

![monochrome heatmap](/gradient-generator/images/gradient_linear_black-white_256x16.jpg)

#### 2-color

![2-color heatmap](/gradient-generator/images/gradient_linear_blue-red_256x16.jpg)

#### 5-color

![5-color heatmap](/gradient-generator/images/gradient_linear_blue-cyan-green-yellow-red_256x16.jpg)

#### 7-color

![7-color heatmap](/gradient-generator/images/gradient_linear_black-blue-cyan-green-yellow-red-white_256x16.jpg)