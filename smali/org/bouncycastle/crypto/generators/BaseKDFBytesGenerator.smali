.class public Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_4

    int-to-long v0, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    const-wide v3, 0x1ffffffffL

    cmp-long v5, v0, v3

    if-gtz v5, :cond_3

    int-to-long v3, v2

    add-long/2addr v0, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    div-long/2addr v0, v3

    long-to-int v1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget v3, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    const/4 v4, 0x0

    move v5, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v8, v7

    invoke-interface {v6, v7, v4, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    int-to-byte v7, v3

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v6, :cond_0

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v6

    invoke-interface {v7, v6, v4, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v0, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le p3, v2, :cond_1

    invoke-static {v0, v4, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v2

    sub-int/2addr p3, v2

    goto :goto_1

    :cond_1
    invoke-static {v0, v4, p1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return p3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output length too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KDF parameters required for KDF2Generator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
