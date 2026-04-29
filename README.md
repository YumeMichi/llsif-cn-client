## Modified SIF CN client

A modified client for [honoka-chan](https://github.com/YumeMichi/honoka-chan)

### How to use?

1. Replace the [public key](https://github.com/YumeMichi/llsif-cn-client/commit/4b36dd48b26467b4dd1e1f479540645788c58f9a)
2. [Optional] Replace the [server address](https://github.com/YumeMichi/llsif-cn-client/commit/c8dba0c2ad5d274f5d0d8e346808a1b006d137ba)
3. [Optional] Repack `assets/AppAssets.zip` and update md5 value in `assets/version`
4. Repack and sign apk

### Patch `libGame.so` public key

If you want to patch the public key directly in native library (`libGame.so`) instead of smali:

1. Backup target so file:

```bash
cp lib/arm64-v8a/libGame.so lib/arm64-v8a/libGame.so.bak
```

2. Replace PEM block by script (keep same length/key size to avoid binary layout issues):

```bash
perl -0777 -i -pe 's#-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDdbbwQV70kgX3OtvJ7/2ior4bX\n218fivIdiHFNi5NuPlRcDFt3IxbfTwVhtwy9Z5OQesBYStCEFm1SLFkI0Vd6TMOK\ni\+bGhYQotgPYj0Kj1PJ\+ccZkbcACPJ1jYS1ROztdYEzt595O2VXW9ufNR5A8O2ai\nB3c1E9sFv80c2UfoiwIDAQAB\n-----END PUBLIC KEY-----#-----BEGIN PUBLIC KEY-----\n<YOUR_PUBLIC_KEY_LINE_1>\n<YOUR_PUBLIC_KEY_LINE_2>\n<YOUR_PUBLIC_KEY_LINE_3>\n<YOUR_PUBLIC_KEY_LINE_4>\n-----END PUBLIC KEY-----#s' lib/arm64-v8a/libGame.so
```

3. Verify result:

```bash
strings -a lib/arm64-v8a/libGame.so | rg -n "BEGIN PUBLIC KEY|END PUBLIC KEY|MIGf"
```

4. If your APK includes multiple ABIs, patch all corresponding files:

```text
lib/arm64-v8a/libGame.so
lib/armeabi-v7a/libGame.so
lib/x86/libGame.so
```
