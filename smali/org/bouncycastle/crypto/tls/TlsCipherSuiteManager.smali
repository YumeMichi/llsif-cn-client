.class public Lorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;
.super Ljava/lang/Object;


# static fields
.field private static final TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA:I = 0x16

.field private static final TLS_DHE_RSA_WITH_AES_128_CBC_SHA:I = 0x33

.field private static final TLS_DHE_RSA_WITH_AES_256_CBC_SHA:I = 0x39

.field private static final TLS_RSA_WITH_3DES_EDE_CBC_SHA:I = 0xa

.field private static final TLS_RSA_WITH_AES_128_CBC_SHA:I = 0x2f

.field private static final TLS_RSA_WITH_AES_256_CBC_SHA:I = 0x35


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getCipherSuite(ILorg/bouncycastle/crypto/tls/TlsProtocolHandler;)Lorg/bouncycastle/crypto/tls/TlsCipherSuite;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0x16

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x33

    if-eq p0, v0, :cond_2

    const/16 v0, 0x35

    if-eq p0, v0, :cond_1

    const/16 v0, 0x39

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/16 v5, 0x20

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IS)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    new-instance v8, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v8, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v9, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v9, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v10, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v11, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v11}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/16 v12, 0x20

    const/4 v13, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IS)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/16 v5, 0x10

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IS)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    new-instance v8, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v8, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v9, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v9, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v10, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v11, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v11}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/16 v12, 0x10

    const/4 v13, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IS)V

    return-object p0

    :cond_4
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/16 v5, 0x18

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IS)V

    return-object p0

    :cond_5
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    new-instance v8, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v8, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v9, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v9, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v10, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v11, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v11}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/16 v12, 0x18

    const/4 v13, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IS)V

    return-object p0
.end method

.method protected static writeCipherSuites(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/16 v0, 0x39

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/16 v0, 0x33

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/16 v0, 0x16

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/16 v0, 0x35

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/16 v0, 0x2f

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    return-void
.end method
