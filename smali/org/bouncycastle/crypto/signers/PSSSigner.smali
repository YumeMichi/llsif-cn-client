.class public Lorg/bouncycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:B = -0x44t


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    const/16 v0, -0x44

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    iput p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    new-array p1, p3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    add-int/lit8 p3, p3, 0x8

    iget p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr p3, p1

    new-array p1, p3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iput-byte p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p2, v2

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p2, v2

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    return-void
.end method

.method private clearBlock([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 7

    new-array v0, p4, [B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->reset()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    div-int v6, p4, v5

    if-ge v4, v6, :cond_0

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v5, v2, v3, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int v6, v4, v5

    invoke-static {v1, v3, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int v5, v5, v4

    if-ge v5, p4, :cond_1

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, v2

    invoke-interface {p1, v2, v3, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int p2, v4, p1

    array-length p3, v0

    mul-int v4, v4, p1

    sub-int/2addr p3, v4

    invoke-static {v1, v3, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v2, v1, 0x8

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v4, v3, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x9

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v2

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v3

    invoke-interface {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    aput-byte v5, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    array-length v7, v2

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    invoke-static {v3, v1, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v4, v3

    aget-byte v7, v2, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v3, v2, v1

    const/16 v4, 0xff

    array-length v6, v2

    mul-int/lit8 v6, v6, 0x8

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v6, v7

    shr-int/2addr v4, v6

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v0

    sub-int/2addr v2, v5

    iget-byte v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v3, v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "encoding error"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    move-object p2, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p2

    check-cast p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 6

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v2, v1, 0x8

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v4, v3, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x9

    const/4 v4, 0x0

    if-ge v0, v2, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v5, v2

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-interface {v0, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    invoke-interface {v0, p1, v4, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    iget-byte v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v0, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v4

    :cond_1
    array-length v0, p1

    iget v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    array-length v3, p1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v3, v2, v0

    aget-byte v5, p1, v0

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v0, p1, v4

    const/16 v2, 0xff

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v3, v5

    shr-int/2addr v2, v3

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v0

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v3

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    if-eq p1, v2, :cond_4

    aget-byte v2, v0, p1

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    array-length p1, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, v0, p1

    if-eq p1, v1, :cond_5

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v4

    :cond_5
    array-length p1, v0

    sub-int/2addr p1, v5

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v3, v2

    sub-int/2addr v3, v5

    invoke-static {v0, p1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v0

    invoke-interface {p1, v0, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v0

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length p1, p1

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v3, v0

    if-eq v2, v3, :cond_7

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v3, v3, p1

    aget-byte v5, v0, v2

    xor-int/2addr v3, v5

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v1

    :catch_0
    return v4
.end method
