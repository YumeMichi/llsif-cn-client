.class public Lorg/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lorg/bouncycastle/crypto/BufferedBlockCipher;


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    new-array v2, v0, [B

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_3

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v5, v5

    if-eq v3, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v6, v3, v0

    aget-byte v6, v2, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    iget v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v3, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v6, v5, v3

    sub-int v7, v3, v0

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v3, v3, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v3, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_2
    add-int/2addr p2, v0

    invoke-static {v2, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "need at least one block of input for CTS"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array v3, v0, [B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v5, v5, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v5, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v5, v6, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v5, v6, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_3
    move v5, v0

    :goto_4
    iget v6, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v5, v6, :cond_6

    sub-int v6, v5, v0

    aget-byte v7, v2, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v8, v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v5, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v2, v4, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr p2, v0

    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    iget p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    return p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer to small in doFinal"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public getOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method

.method public processByte(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput p3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    aput-byte p1, p3, v0

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le p3, v1, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v2, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_1
    if-le p3, v0, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v5, p5, v3

    invoke-interface {v1, v4, v2, p4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v1, v0, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    iget-object p4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget p5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    return v2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
