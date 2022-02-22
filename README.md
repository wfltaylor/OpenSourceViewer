# Open Source Viewer

Easily view open source dependencies.

## Getting Started

Simply initialize an `OpenSourceViewController` with the contents of a file.

```swift
import OpenSourceViewer

guard let openSourceDescriptionURL = Bundle.main.url(forResource: "OpenSourceLicences", withExtension: "json"),
      let description = try? OpenSourceDescription(contentsOf: openSourceDescriptionURL) else { return }
let openSourceViewController = OpenSourceViewController(openSourceDescription: description)

pushViewController(openSourceViewController, animated: true)
```

An example of a valid file is available below.

```json
{
    "packages": [
        {
            "name": "OpenSourceViewer",
            "license": "Copyright 2019-2022 William Taylor\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and\/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."
        }
    ]
}
```

## Installation

OpenSourceViewer is available through Swift Package Manager. 

```swift
dependencies: [
    .package(url: "https://github.com/wfltaylor/OpenSourceViewer.git", .upToNextMajor(from: "1.1.0"))
]
```

## License

OpenSourceViewer is available under the MIT license. See the LICENSE file for more info.
