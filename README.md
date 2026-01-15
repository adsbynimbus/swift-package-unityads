# Swift Package Template

 **⚡️ Quick start** – Clone this repository, replace the placeholder values in `Package.swift`, and you’re ready to ship your binary‑only Swift package.

## 1. Create a new repository
Using the GitHub UI, click **Use this template** and then rename the repo.

## 2. Update `Package.swift`
[Package.swift](Package.swift) contains a single binary target that points to an XCFramework hosted somewhere.

```swift
// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-package-template",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "swift-package",
            targets: ["swift-package-xcframework"],
        ),
    ],
    targets: [
        .binaryTarget(
            name: "swift-package-xcframework",
            url: "https://path-to-xcframework",   
            checksum: "",
        ),
    ]
)
```

### What to change

| Field                               | What you need to replace                                                                                      |
|-------------------------------------|---------------------------------------------------------------------------------------------------------------|
| `name` (in the package and product) | Your library’s name.                                                                                          |
| `url`                               | The HTTPS URL that points to the XCFramework zip (e.g. `https://example.com/sdk/1.0.0/MySDK-1.0.0.zip`).      |
| `checksum`                          | The SHA‑256 checksum of the zip file. Compute it with: <br>`swift package compute-checksum /path/to/your.zip` |

**Tip** – Keep the indentation exactly as shown; the workflow will preserve it for you.

## 3. The [update.yml](.github/workflows/update.yml) workflow

The repository contains a reusable GitHub Actions workflow (`.github/workflows/update.yml`) that automates bumping the binary target.

### What it does

1. **Read** the current URL from `Package.swift`.
2. **Replace** the semantic‑version segment of that URL with a new one you provide (or keep the old URL if none is supplied).
3. **Download** the updated binary, compute its checksum, and patch `Package.swift` with the new URL & checksum while keeping all indentation intact.
4. **Validate** the package (`swift package resolve`).
5. **Commit & push** the changes and, if on the default branch, create a GitHub release tagged with the new version.

### How to invoke it

#### From another workflow (reusable)
```yaml
jobs: 
  bump-version: 
  uses: ./.github/workflows/update.yml 
  with: 
    version: "2.1.0" # required 
    url: "" # optional; leave empty or omit to keep the old URL
```
#### From the GitHub CLI
```bash
gh workflow run update.yml --field version=2.1.0
```
The workflow is **idempotent** – running it with the same version again will simply recompute the checksum and re‑commit the unchanged file.
