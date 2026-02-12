# BackdropFilter Demo

This is a Flutter demo application that demonstrates the **BackdropFilter** widget, which is typically used to apply a blur effect to the content behind a certain widget.
![image alt](https://github.com/hd77alu/flutter_demo_backdrop/blob/271cda7bda534d2c69a71aa96b23121b7333e74d/images/backdrop-allSC.png)

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
