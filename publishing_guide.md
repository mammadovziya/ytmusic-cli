# Publishing Guide - ytmusic-cli

Follow these steps to publish `ytmusic-cli` under the account `mammadovziya`.

## 1. NPM Publication

The project uses a "wrapper" architecture to deliver platform-specific binaries. You must publish the platform packages first, then the main package.

### Step A: Login to NPM
```sh
npm login
```

### Step B: Publish Platform Packages
Navigate to each platform folder and publish them. Note: Since these are scoped under `@mammadovziya`, you must use the `--access public` flag if it's your first time publishing this scope.

```sh
# Mac ARM64
cd npm/darwin-arm64 && npm publish --access public && cd ../..

# Mac x64
cd npm/darwin-x64 && npm publish --access public && cd ../..

# Linux x64
cd npm/linux-x64 && npm publish --access public && cd ../..

# Linux ARM64
cd npm/linux-arm64 && npm publish --access public && cd ../..

# Windows x64
cd npm/win32-x64 && npm publish --access public && cd ../..
```

### Step C: Publish the Main Package
Finally, publish the root package which will link to the optional dependencies above.

```sh
npm publish --access public
```

---

## 2. Homebrew Publication

To publish on Homebrew, you need to create a "tap" repository on your GitHub.

### Step A: Create a Tap Repository
1. Create a new public repository named `homebrew-ytmusic-cli` on GitHub.
2. Clone it locally.

### Step B: Prepare a Release
1. Push your code to your main `ytmusic-cli` GitHub repo.
2. Create a new GitHub Release (e.g., `v0.3.0`).
3. Download the "Source code (tar.gz)" from that release.

### Step C: Update the Formula
1. Get the SHA256 of the downloaded tarball:
   ```sh
   openssl dgst -sha256 yt-music-cli-0.3.0.tar.gz
   ```
2. Copy the content from [ytmusic-cli.rb](file:///Users/ziya/Documents/yt-music-cli/Formula/ytmusic-cli.rb) into your tap repository as `Formula/ytmusic-cli.rb`.
3. Update the `sha256` field in the file with the value from step 1.
4. Commit and push the `Formula/` to your `homebrew-ytmusic-cli` repo.

### Step D: Installation
Your users can now install via:
```sh
brew tap mammadovziya/ytmusic-cli
brew install ytmusic-cli
```

---

## 3. Maintenance

Whenever you update the version:
1. Update `"version"` in all `package.json` files (root and sub-packages).
2. Run `bun run build` to regenerate binaries.
3. Repeat the publication steps above.
