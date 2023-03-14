.class public Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_0
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length p1, p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV not equal to 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public unwrap([BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez p2, :cond_6

    div-int/lit8 p2, p3, 0x8

    mul-int/lit8 v0, p2, 0x8

    if-ne v0, p3, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v0

    sub-int v1, p3, v1

    new-array v1, v1, [B

    array-length v2, v0

    new-array v2, v2, [B

    array-length v3, v0

    const/16 v4, 0x8

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v0, v0

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v0

    array-length v0, v0

    sub-int/2addr p3, v0

    invoke-static {p1, v6, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1, v5, p3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    const/4 p3, 0x5

    :goto_0
    if-ltz p3, :cond_2

    move v0, p2

    :goto_1
    if-lt v0, p1, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v0, -0x1

    mul-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v1, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v7, p2, p3

    add-int/2addr v7, v0

    const/4 v8, 0x1

    :goto_2
    if-eqz v7, :cond_0

    int-to-byte v9, v7

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-byte v11, v3, v10

    xor-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    ushr-int/lit8 v7, v7, 0x8

    add-int/2addr v8, p1

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v3, v5, v3, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v4, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length p2, p1

    if-eq v5, p2, :cond_4

    aget-byte p2, v2, v5

    aget-byte p1, p1, v5

    if-ne p2, p1, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "checksum failed"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public wrap([BII)[B
    .locals 11

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz p2, :cond_4

    div-int/lit8 p2, p3, 0x8

    mul-int/lit8 v0, p2, 0x8

    if-ne v0, p3, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v0

    add-int/2addr v1, p3

    new-array v1, v1, [B

    array-length v2, v0

    const/16 v3, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    invoke-static {p1, v5, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x6

    if-eq p1, p3, :cond_2

    const/4 p3, 0x1

    :goto_1
    if-gt p3, p2, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v4, p3, 0x8

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    invoke-static {v1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v2, v5, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    mul-int v6, p2, p1

    add-int/2addr v6, p3

    const/4 v7, 0x1

    :goto_2
    if-eqz v6, :cond_0

    int-to-byte v8, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v7

    aget-byte v10, v2, v9

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v9

    ushr-int/lit8 v6, v6, 0x8

    add-int/2addr v7, v0

    goto :goto_2

    :cond_0
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
