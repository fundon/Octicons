# Octicons

[GitHub Octicons](https://github.com/primer/octicons/) for Swift 3.0 on macOS

## Installation

### Carthage

```
github "fundon/Octicons"
```

## Examples

```swift
import Octicons

// NSImage
imageView.image = NSImage.icon(fontName: "octicons", code: "\u{f00a}", size: CGSize(width: 100, height: 100))

// NSTextField
textField.stringValue = "\u{f00a}"
textField.font = NSFont.icon(fontName: "octicons", size: 100)
textField.textColor = NSColor.blue
```

## License

This project licensed under [MIT](http://opensource.org/licenses/mit-license.html).

GitHub Octicons licensed under [SIL OFL 1.1](http://scripts.sil.org/OFL).

---

> [fundon.me](https://fundon.me) &nbsp;&middot;&nbsp;
> GitHub [@fundon](https://github.com/fundon) &nbsp;&middot;&nbsp;
> Twitter [@_fundon](https://twitter.com/_fundon)

