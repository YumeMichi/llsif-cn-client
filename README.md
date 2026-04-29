# Modified SIF CN Client

Modified Android client for [honoka-chan](https://github.com/YumeMichi/honoka-chan).

## Prerequisites

- `apktool` (decode/build apk)
- `zip` / `unzip` (asset repack)
- `apksigner` or `jarsigner` (sign apk)
- `strings` and `rg` (optional, for verification)

## Typical workflow

1. Replace public key (choose one method):
   - Smali hardcode method: [commit 4b36dd4](https://github.com/YumeMichi/llsif-cn-client/commit/4b36dd48b26467b4dd1e1f479540645788c58f9a)
   - Native `libGame.so` patch: see section below.
2. (Optional) Replace server address: [commit c8dba0c](https://github.com/YumeMichi/llsif-cn-client/commit/c8dba0c2ad5d274f5d0d8e346808a1b006d137ba)
3. (Optional) Repack `assets/AppAssets.zip` and update md5 value in `assets/version`.
4. Rebuild and sign apk.

## Patch public key in `libGame.so`

Use this when you want to keep smali logic unchanged and patch the native embedded PEM directly.

### 1) Backup target files

```bash
cp lib/arm64-v8a/libGame.so lib/arm64-v8a/libGame.so.bak
cp lib/armeabi-v7a/libGame.so lib/armeabi-v7a/libGame.so.bak
cp lib/x86/libGame.so lib/x86/libGame.so.bak
```

### 2) Replace PEM block

Keep key size the same (for example 1024-bit to 1024-bit) to reduce binary compatibility risk.

```bash
perl -0777 -i -pe 's#-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDdbbwQV70kgX3OtvJ7/2ior4bX\n218fivIdiHFNi5NuPlRcDFt3IxbfTwVhtwy9Z5OQesBYStCEFm1SLFkI0Vd6TMOK\ni\+bGhYQotgPYj0Kj1PJ\+ccZkbcACPJ1jYS1ROztdYEzt595O2VXW9ufNR5A8O2ai\nB3c1E9sFv80c2UfoiwIDAQAB\n-----END PUBLIC KEY-----#-----BEGIN PUBLIC KEY-----\n<YOUR_PUBLIC_KEY_LINE_1>\n<YOUR_PUBLIC_KEY_LINE_2>\n<YOUR_PUBLIC_KEY_LINE_3>\n<YOUR_PUBLIC_KEY_LINE_4>\n-----END PUBLIC KEY-----#s' lib/arm64-v8a/libGame.so
```

Run the same command for `lib/armeabi-v7a/libGame.so` and `lib/x86/libGame.so` if those ABIs are shipped.

### 3) Verify patch

```bash
strings -a lib/arm64-v8a/libGame.so | sed -n '/-----BEGIN PUBLIC KEY-----/,/-----END PUBLIC KEY-----/p'
```

### 4) Build and sign

After patching, rebuild apk and sign it with your own keystore.
