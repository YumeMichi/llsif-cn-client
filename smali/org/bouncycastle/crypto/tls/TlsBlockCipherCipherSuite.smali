.class public Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;
.super Lorg/bouncycastle/crypto/tls/TlsCipherSuite;


# instance fields
.field private cipherKeySize:I

.field private decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private keyExchange:S

.field private readDigest:Lorg/bouncycastle/crypto/Digest;

.field private readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field private writeDigest:Lorg/bouncycastle/crypto/Digest;

.field private writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IS)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsCipherSuite;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lorg/bouncycastle/crypto/Digest;

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readDigest:Lorg/bouncycastle/crypto/Digest;

    iput p5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    iput-short p6, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->keyExchange:S

    return-void
.end method

.method private initCipher(ZLorg/bouncycastle/crypto/BlockCipher;[BIII)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p5, p4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance p4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p5

    invoke-direct {p4, v0, p3, p6, p5}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    invoke-interface {p2, p1, p4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method


# virtual methods
.method protected decodeCiphertext(S[BIILorg/bouncycastle/crypto/tls/TlsProtocolHandler;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v4, v2, p3

    invoke-interface {v3, p2, v4, p2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    add-int v0, p3, p4

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-byte v3, p2, v0

    sub-int v4, v0, v3

    if-gez v4, :cond_1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-gt v4, v3, :cond_3

    sub-int v6, v0, v4

    aget-byte v6, p2, v6

    if-eq v6, v3, :cond_2

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int/2addr p4, v0

    sub-int/2addr p4, v3

    sub-int/2addr p4, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_5

    add-int v3, p3, p4

    add-int/2addr v3, v0

    aget-byte v3, p2, v3

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    const/4 p1, 0x2

    const/16 v0, 0x14

    invoke-virtual {p5, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_6
    new-array p1, p4, [B

    invoke-static {p2, p3, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected encodePlaintext(S[BII)[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    sub-int v1, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v2

    add-int/2addr v2, p4

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v5, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v4, v3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p4, p1

    const/4 p1, 0x0

    :goto_0
    if-gt p1, v1, :cond_0

    add-int p2, p1, p4

    int-to-byte p3, v1

    aput-byte p3, v3, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v2, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v3, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v4, v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method protected getKeyExchangeAlgorithm()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->keyExchange:S

    return v0
.end method

.method protected init([B[B[B)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p2

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p3

    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p3

    invoke-static {p3, v4, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p2, "key expansion"

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsMac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    invoke-direct {p1, p2, v0, v4, p3}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/Digest;[BII)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    add-int/2addr p1, v4

    new-instance p2, Lorg/bouncycastle/crypto/tls/TlsMac;

    iget-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-direct {p2, p3, v0, p1, v1}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/Digest;[BII)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    add-int/2addr p1, p2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    mul-int/lit8 p2, v5, 0x2

    add-int v7, p1, p2

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, v0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->initCipher(ZLorg/bouncycastle/crypto/BlockCipher;[BIII)V

    iget v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    add-int v6, p1, v5

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int p1, v6, v5

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    add-int v7, p1, p2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->initCipher(ZLorg/bouncycastle/crypto/BlockCipher;[BIII)V

    return-void
.end method
