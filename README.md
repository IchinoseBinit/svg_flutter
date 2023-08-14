# svg_flutter

Upgraded package for getting SVG Images with error handling. An upgrade to the package flutter_svg that renders the default image when an error occurs.

Draw SVG files using Flutter.

## Getting Started

Inside the main file update the errorImage variable in SvgPicture class.

```dart
void main() {
  SvgPicture.errorImage = "base64_of_your_error_image";
}
```

To use the picture that you have uploaded as placeholder, use the following widget
```dart
  SvgPicture.getDefaultImage();
  // Use the color parameter to pass the color.
  // If not passed, it takes White as default
```


## Documentation 

- You can look up the official flutter_svg package details using this link: https://pub.dev/packages/flutter_svg