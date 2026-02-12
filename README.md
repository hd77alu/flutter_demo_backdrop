# BackdropFilter Demo

This is a Flutter demo application demonstrating the **BackdropFilter** widget which is usually used to apply blur effects to the content behind a certain widget.

## How to Run

```bash
flutter pub get
flutter run
```

## Three Demo Screens

### 1. **Blur Image**
Applies a blur effect to an entire image using `BackdropFilter` with `ImageFilter.blur()`. 

### 2. **Blur Text Container**
Shows text on a blured background - established by blurring the background behind a semi-transparent container.

### 3. **Interactive Blur**
Allow the user to control the blur  using a slider - dynamically adjusts the `sigmaX` and `sigmaY` parameters (0-20 range) to change blur intensity on the fly.

## Key Attributes for the BackdropFilter

- **`filter`**: The `ImageFilter.blur()`: defines the blur effect
- **`sigmaX` / `sigmaY`**: Blur intensity values