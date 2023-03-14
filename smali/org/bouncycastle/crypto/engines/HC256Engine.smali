.class public Lorg/bouncycastle/crypto/engines/HC256Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private buf:[B

.field private cnt:I

.field private idx:I

.field private initialised:Z

.field private iv:[B

.field private key:[B

.field private p:[I

.field private q:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    return-void
.end method

.method private getByte()B
    .locals 6

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    move-result v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    shr-int/lit8 v0, v0, 0x8

    const/4 v4, 0x2

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    shr-int/lit8 v0, v0, 0x8

    const/4 v4, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    aget-byte v0, v0, v3

    add-int/2addr v3, v2

    and-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    return v0
.end method

.method private init()V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    const/16 v2, 0xa00

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    shr-int/lit8 v5, v4, 0x3

    aget v6, v3, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    aget-byte v7, v7, v4

    and-int/lit8 v8, v4, 0x7

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v6, v5

    if-ge v4, v6, :cond_1

    if-ge v4, v1, :cond_1

    shr-int/lit8 v6, v4, 0x3

    add-int/lit8 v6, v6, 0x8

    aget v7, v3, v6

    aget-byte v5, v5, v4

    and-int/lit8 v8, v4, 0x7

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    aput v5, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_2
    if-ge v1, v2, :cond_2

    add-int/lit8 v4, v1, -0x2

    aget v4, v3, v4

    add-int/lit8 v5, v1, -0xf

    aget v5, v3, v5

    const/16 v6, 0x11

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v6

    const/16 v7, 0x13

    invoke-static {v4, v7}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v4, v4, 0xa

    xor-int/2addr v4, v6

    add-int/lit8 v6, v1, -0x7

    aget v6, v3, v6

    add-int/2addr v4, v6

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v6

    const/16 v7, 0x12

    invoke-static {v5, v7}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x10

    aget v5, v3, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x200

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    const/16 v4, 0x400

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x600

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 256 bit long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private static rotateRight(II)I
    .locals 1

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private step()I
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    and-int/lit16 v1, v0, 0x3ff

    const/16 v2, 0x17

    const/16 v3, 0xa

    const/16 v4, 0x400

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v4, v1, -0x3

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v0, v4

    add-int/lit16 v5, v1, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v5, v0, v5

    aget v6, v0, v1

    add-int/lit8 v7, v1, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v7, v0, v7

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    invoke-static {v5, v2}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v7, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    xor-int v3, v4, v5

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v2, v3

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v3, v1, -0xc

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v0, v3

    and-int/lit16 v4, v3, 0xff

    aget v4, v2, v4

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x300

    aget v2, v2, v3

    add-int/2addr v4, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v4, v1, -0x3

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v0, v4

    add-int/lit16 v5, v1, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v5, v0, v5

    aget v6, v0, v1

    add-int/lit8 v7, v1, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v7, v0, v7

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    invoke-static {v5, v2}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v7, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    xor-int v3, v4, v5

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v2, v3

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v3, v1, -0xc

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v0, v3

    and-int/lit16 v4, v3, 0xff

    aget v4, v2, v4

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x300

    aget v2, v2, v3

    add-int/2addr v4, v2

    aget v0, v0, v1

    :goto_0
    xor-int/2addr v0, v4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7ff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HC-256"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter passed to HC256 init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

    if-eqz v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    return-void
.end method

.method public returnByte(B)B
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getByte()B

    move-result v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method
