.class public Lorg/bouncycastle/crypto/engines/CamelliaEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final MASK32:J = 0xffffffffL

.field private static final MASK8:J = 0xffL

.field private static final SIGMA1:J = -0x5f619980c4336f75L

.field private static final SIGMA2:J = -0x498517a7b3558c4eL

.field private static final SIGMA3:J = -0x3910c8d016b07d42L

.field private static final SIGMA4:J = 0x54ff53a5f1d36f1cL

.field private static final SIGMA5:J = 0x10e527fade682d1dL

.field private static final SIGMA6:J = -0x4fa9773d4c193e03L


# instance fields
.field private final SBOX1:[B

.field private final SBOX2:[B

.field private final SBOX3:[B

.field private final SBOX4:[B

.field private _k1:J

.field private _k10:J

.field private _k11:J

.field private _k12:J

.field private _k13:J

.field private _k14:J

.field private _k15:J

.field private _k16:J

.field private _k17:J

.field private _k18:J

.field private _k19:J

.field private _k2:J

.field private _k20:J

.field private _k21:J

.field private _k22:J

.field private _k23:J

.field private _k24:J

.field private _k3:J

.field private _k4:J

.field private _k5:J

.field private _k6:J

.field private _k7:J

.field private _k8:J

.field private _k9:J

.field private _ke1:J

.field private _ke2:J

.field private _ke3:J

.field private _ke4:J

.field private _ke5:J

.field private _ke6:J

.field private _keyIs128:Z

.field private _kw1:J

.field private _kw2:J

.field private _kw3:J

.field private _kw4:J

.field private initialised:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4:[B

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1:[B

    aget-byte v3, v3, v1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot8(BI)B

    move-result v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1:[B

    aget-byte v3, v3, v1

    const/4 v5, 0x7

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot8(BI)B

    move-result v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1:[B

    int-to-byte v5, v1

    invoke-direct {p0, v5, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot8(BI)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x70t
        -0x7et
        0x2ct
        -0x14t
        -0x4dt
        0x27t
        -0x40t
        -0x1bt
        -0x1ct
        -0x7bt
        0x57t
        0x35t
        -0x16t
        0xct
        -0x52t
        0x41t
        0x23t
        -0x11t
        0x6bt
        -0x6dt
        0x45t
        0x19t
        -0x5bt
        0x21t
        -0x13t
        0xet
        0x4ft
        0x4et
        0x1dt
        0x65t
        -0x6et
        -0x43t
        -0x7at
        -0x48t
        -0x51t
        -0x71t
        0x7ct
        -0x15t
        0x1ft
        -0x32t
        0x3et
        0x30t
        -0x24t
        0x5ft
        0x5et
        -0x3bt
        0xbt
        0x1at
        -0x5at
        -0x1ft
        0x39t
        -0x36t
        -0x2bt
        0x47t
        0x5dt
        0x3dt
        -0x27t
        0x1t
        0x5at
        -0x2at
        0x51t
        0x56t
        0x6ct
        0x4dt
        -0x75t
        0xdt
        -0x66t
        0x66t
        -0x5t
        -0x34t
        -0x50t
        0x2dt
        0x74t
        0x12t
        0x2bt
        0x20t
        -0x10t
        -0x4ft
        -0x7ct
        -0x67t
        -0x21t
        0x4ct
        -0x35t
        -0x3et
        0x34t
        0x7et
        0x76t
        0x5t
        0x6dt
        -0x49t
        -0x57t
        0x31t
        -0x2ft
        0x17t
        0x4t
        -0x29t
        0x14t
        0x58t
        0x3at
        0x61t
        -0x22t
        0x1bt
        0x11t
        0x1ct
        0x32t
        0xft
        -0x64t
        0x16t
        0x53t
        0x18t
        -0xet
        0x22t
        -0x2t
        0x44t
        -0x31t
        -0x4et
        -0x3dt
        -0x4bt
        0x7at
        -0x6ft
        0x24t
        0x8t
        -0x18t
        -0x58t
        0x60t
        -0x4t
        0x69t
        0x50t
        -0x56t
        -0x30t
        -0x60t
        0x7dt
        -0x5ft
        -0x77t
        0x62t
        -0x69t
        0x54t
        0x5bt
        0x1et
        -0x6bt
        -0x20t
        -0x1t
        0x64t
        -0x2et
        0x10t
        -0x3ct
        0x0t
        0x48t
        -0x5dt
        -0x9t
        0x75t
        -0x25t
        -0x76t
        0x3t
        -0x1at
        -0x26t
        0x9t
        0x3ft
        -0x23t
        -0x6ct
        -0x79t
        0x5ct
        -0x7dt
        0x2t
        -0x33t
        0x4at
        -0x70t
        0x33t
        0x73t
        0x67t
        -0xat
        -0xdt
        -0x63t
        0x7ft
        -0x41t
        -0x1et
        0x52t
        -0x65t
        -0x28t
        0x26t
        -0x38t
        0x37t
        -0x3at
        0x3bt
        -0x7ft
        -0x6at
        0x6ft
        0x4bt
        0x13t
        -0x42t
        0x63t
        0x2et
        -0x17t
        0x79t
        -0x59t
        -0x74t
        -0x61t
        0x6et
        -0x44t
        -0x72t
        0x29t
        -0xbt
        -0x7t
        -0x4at
        0x2ft
        -0x3t
        -0x4ct
        0x59t
        0x78t
        -0x68t
        0x6t
        0x6at
        -0x19t
        0x46t
        0x71t
        -0x46t
        -0x2ct
        0x25t
        -0x55t
        0x42t
        -0x78t
        -0x5et
        -0x73t
        -0x6t
        0x72t
        0x7t
        -0x47t
        0x55t
        -0x8t
        -0x12t
        -0x54t
        0xat
        0x36t
        0x49t
        0x2at
        0x68t
        0x3ct
        0x38t
        -0xft
        -0x5ct
        0x40t
        0x28t
        -0x2dt
        0x7bt
        -0x45t
        -0x37t
        0x43t
        -0x3ft
        0x15t
        -0x1dt
        -0x53t
        -0xct
        0x77t
        -0x39t
        -0x80t
        -0x62t
    .end array-data
.end method

.method private bytesToWord([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    shl-long/2addr v0, v3

    add-int v3, v2, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private f(JJ)J
    .locals 17

    move-object/from16 v0, p0

    xor-long v1, p1, p3

    const/16 v3, 0x20

    shr-long v4, v1, v3

    long-to-int v5, v4

    long-to-int v2, v1

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1:[B

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2:[B

    shr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v6, v7

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3:[B

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v8, v9

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4:[B

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v10, v5

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v6, v6, v11

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v8, v8, v11

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    xor-int v2, v4, v9

    xor-int/2addr v2, v5

    xor-int/2addr v2, v8

    xor-int/2addr v2, v10

    xor-int/2addr v2, v1

    xor-int v11, v4, v7

    xor-int v12, v11, v5

    xor-int/2addr v12, v6

    xor-int/2addr v12, v10

    xor-int/2addr v12, v1

    xor-int v13, v11, v9

    xor-int/2addr v13, v6

    xor-int/2addr v13, v8

    xor-int/2addr v13, v1

    xor-int/2addr v7, v9

    xor-int v14, v7, v5

    xor-int/2addr v14, v6

    xor-int/2addr v14, v8

    xor-int/2addr v14, v10

    xor-int/2addr v11, v8

    xor-int/2addr v11, v10

    xor-int/2addr v11, v1

    xor-int/2addr v7, v6

    xor-int/2addr v7, v10

    xor-int/2addr v7, v1

    xor-int/2addr v9, v5

    xor-int/2addr v9, v6

    xor-int/2addr v9, v8

    xor-int/2addr v1, v9

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    xor-int/2addr v4, v8

    xor-int/2addr v4, v10

    int-to-long v5, v2

    const/16 v2, 0x38

    shl-long/2addr v5, v2

    int-to-long v8, v12

    const-wide/16 v15, 0xff

    and-long/2addr v8, v15

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long/2addr v5, v8

    int-to-long v8, v13

    and-long/2addr v8, v15

    const/16 v2, 0x28

    shl-long/2addr v8, v2

    or-long/2addr v5, v8

    int-to-long v8, v14

    and-long/2addr v8, v15

    shl-long v2, v8, v3

    or-long/2addr v2, v5

    int-to-long v5, v11

    and-long/2addr v5, v15

    const/16 v8, 0x18

    shl-long/2addr v5, v8

    or-long/2addr v2, v5

    int-to-long v5, v7

    and-long/2addr v5, v15

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    int-to-long v5, v1

    and-long/2addr v5, v15

    const/16 v1, 0x8

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    int-to-long v4, v4

    and-long/2addr v4, v15

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private fl(JJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v2, v1

    long-to-int p2, p1

    shr-long v3, p3, v0

    long-to-int p1, v3

    long-to-int p4, p3

    and-int/2addr p1, v2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot32(II)I

    move-result p1

    xor-int/2addr p1, p2

    or-int p2, p1, p4

    xor-int/2addr p2, v2

    int-to-long p2, p2

    shl-long/2addr p2, v0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p2, v0

    return-wide p2
.end method

.method private flInv(JJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v2, v1

    long-to-int p2, p1

    shr-long v3, p3, v0

    long-to-int p1, v3

    long-to-int p4, p3

    or-int p3, p2, p4

    xor-int/2addr p3, v2

    and-int/2addr p1, p3

    const/4 p4, 0x1

    invoke-direct {p0, p1, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot32(II)I

    move-result p1

    xor-int/2addr p1, p2

    int-to-long p2, p3

    shl-long/2addr p2, v0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p2, v0

    return-wide p2
.end method

.method private lRot128high(JJI)J
    .locals 1

    const/16 v0, 0x40

    if-ge p5, v0, :cond_0

    shl-long/2addr p1, p5

    neg-int p5, p5

    ushr-long/2addr p3, p5

    or-long/2addr p3, p1

    goto :goto_0

    :cond_0
    if-ne p5, v0, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p5, v0

    shl-long/2addr p3, p5

    neg-int p5, p5

    ushr-long/2addr p1, p5

    or-long/2addr p3, p1

    :goto_0
    return-wide p3
.end method

.method private lRot128low(JJI)J
    .locals 1

    const/16 v0, 0x40

    if-ge p5, v0, :cond_0

    shl-long/2addr p3, p5

    neg-int p5, p5

    ushr-long/2addr p1, p5

    or-long/2addr p1, p3

    goto :goto_0

    :cond_0
    if-ne p5, v0, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p5, v0

    shl-long/2addr p1, p5

    neg-int p5, p5

    ushr-long/2addr p3, p5

    or-long/2addr p1, p3

    :goto_0
    return-wide p1
.end method

.method private lRot32(II)I
    .locals 1

    shl-int v0, p1, p2

    neg-int p2, p2

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private lRot8(BI)B
    .locals 1

    shl-int v0, p1, p2

    and-int/lit16 p1, p1, 0xff

    rsub-int/lit8 p2, p2, 0x8

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method private processBlock128([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x8

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw2:J

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k1:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k2:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k3:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k4:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k5:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k6:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke1:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->fl(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke2:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->flInv(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k7:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k8:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k9:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k10:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k11:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k12:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke3:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->fl(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke4:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->flInv(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k13:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k14:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k15:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k16:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k17:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k18:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw3:J

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw4:J

    xor-long/2addr v0, v2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->wordToBytes(J[BI)V

    add-int/lit8 p4, p4, 0x8

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->wordToBytes(J[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private processBlock192or256([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x8

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw2:J

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k1:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k2:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k3:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k4:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k5:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k6:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke1:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->fl(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke2:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->flInv(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k7:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k8:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k9:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k10:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k11:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k12:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke3:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->fl(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke4:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->flInv(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k13:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k14:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k15:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k16:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k17:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k18:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke5:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->fl(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke6:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->flInv(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k19:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k20:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k21:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k22:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k23:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k24:J

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw3:J

    xor-long/2addr p1, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw4:J

    xor-long/2addr v0, v2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->wordToBytes(J[BI)V

    add-int/lit8 p4, p4, 0x8

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->wordToBytes(J[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private setKey(Z[B)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v7, 0x0

    if-eq v1, v5, :cond_2

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    invoke-direct {v6, v0, v7}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v8

    invoke-direct {v6, v0, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v3

    invoke-direct {v6, v0, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v10

    invoke-direct {v6, v0, v2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v0

    iput-boolean v7, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    move-wide v14, v0

    move-wide v12, v3

    move-wide v7, v8

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only a key sizes of 128/192/256 are acceptable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {v6, v0, v7}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v1

    invoke-direct {v6, v0, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v3

    invoke-direct {v6, v0, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v8

    invoke-direct {v6, v0, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    xor-long/2addr v10, v12

    iput-boolean v7, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    move-wide v12, v3

    move-wide v14, v10

    move-wide v10, v8

    move-wide v7, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    invoke-direct {v6, v0, v7}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v7

    invoke-direct {v6, v0, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytesToWord([BI)J

    move-result-wide v0

    move-wide v12, v0

    move-wide v10, v2

    move-wide v14, v10

    :goto_0
    xor-long v0, v7, v10

    xor-long v2, v12, v14

    const-wide v4, -0x5f619980c4336f75L    # -1.451112860296783E-151

    invoke-direct {v6, v0, v1, v4, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v4

    xor-long/2addr v2, v4

    const-wide v4, -0x498517a7b3558c4eL    # -2.945748034025331E-46

    invoke-direct {v6, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v4

    xor-long/2addr v0, v4

    xor-long/2addr v0, v7

    xor-long/2addr v2, v12

    const-wide v4, -0x3910c8d016b07d42L    # -5.065016596017141E33

    invoke-direct {v6, v0, v1, v4, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v4

    xor-long/2addr v4, v2

    const-wide v2, 0x54ff53a5f1d36f1cL    # 2.740778341307747E101

    invoke-direct {v6, v4, v5, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v2, v0

    iget-boolean v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iput-wide v7, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw1:J

    iput-wide v12, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw2:J

    const/16 v9, 0x6f

    move-object/from16 v0, p0

    move-wide v10, v2

    move-wide v1, v10

    move-wide v14, v4

    move-wide v3, v14

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw3:J

    const/16 v5, 0x6f

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw4:J

    iput-wide v10, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k1:J

    iput-wide v14, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k2:J

    const/16 v5, 0xf

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k3:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k4:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k5:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k6:J

    const/16 v5, 0x2d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k7:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k8:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k9:J

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k10:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k11:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k12:J

    const/16 v5, 0x5e

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k13:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k14:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k15:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k16:J

    const/16 v5, 0x6f

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k17:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k18:J

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke1:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke2:J

    const/16 v5, 0x4d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke3:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke4:J

    goto/16 :goto_2

    :cond_3
    move-wide v10, v2

    move-wide v14, v4

    iput-wide v7, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw3:J

    iput-wide v12, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw4:J

    const/16 v5, 0x6f

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw1:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw2:J

    iput-wide v10, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k18:J

    iput-wide v14, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k17:J

    const/16 v5, 0xf

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k16:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k15:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k14:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k13:J

    const/16 v5, 0x2d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k12:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k11:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k10:J

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k9:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k8:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k7:J

    const/16 v5, 0x5e

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k6:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k5:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k4:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k3:J

    const/16 v5, 0x6f

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k2:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k1:J

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke4:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke3:J

    const/16 v5, 0x4d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke2:J

    move-object/from16 v0, p0

    move-wide v1, v7

    goto/16 :goto_1

    :cond_4
    move-wide/from16 v18, v2

    move-wide/from16 v16, v4

    xor-long v0, v18, v10

    xor-long v2, v16, v14

    const-wide v4, 0x10e527fade682d1dL

    invoke-direct {v6, v0, v1, v4, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v4

    xor-long/2addr v4, v2

    const-wide v2, -0x4fa9773d4c193e03L    # -7.784373207690578E-76

    invoke-direct {v6, v4, v5, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->f(JJ)J

    move-result-wide v2

    xor-long/2addr v2, v0

    if-eqz p1, :cond_5

    iput-wide v7, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw1:J

    iput-wide v12, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw2:J

    iput-wide v2, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k1:J

    iput-wide v4, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k2:J

    const/16 v9, 0xf

    move-object/from16 v0, p0

    move-wide/from16 p1, v2

    move-wide v1, v10

    move-wide/from16 v20, v4

    move-wide v3, v14

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k3:J

    const/16 v5, 0xf

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k4:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k5:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k6:J

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke1:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke2:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k7:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k8:J

    const/16 v5, 0x2d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k9:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k10:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k11:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k12:J

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke3:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke4:J

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k13:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k14:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k15:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k16:J

    const/16 v5, 0x4d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k17:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k18:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke5:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke6:J

    const/16 v5, 0x5e

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k19:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k20:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k21:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k22:J

    const/16 v5, 0x6f

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k23:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k24:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw3:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw4:J

    goto/16 :goto_2

    :cond_5
    move-wide/from16 p1, v2

    move-wide/from16 v20, v4

    iput-wide v7, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw3:J

    iput-wide v12, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw4:J

    const/16 v5, 0x6f

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw1:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_kw2:J

    move-wide/from16 v3, p1

    iput-wide v3, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k24:J

    move-wide/from16 v1, v20

    iput-wide v1, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k23:J

    const/16 v5, 0xf

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide/from16 v22, v3

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k22:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k21:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k20:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k19:J

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k18:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k17:J

    const/16 v5, 0x2d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k16:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k15:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k14:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k13:J

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k12:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k11:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k10:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k9:J

    const/16 v5, 0x4d

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k8:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k7:J

    const/16 v5, 0x5e

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k6:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k5:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k4:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k3:J

    const/16 v5, 0x6f

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k2:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_k1:J

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke6:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke5:J

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke4:J

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke3:J

    const/16 v5, 0x4d

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128high(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke2:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    :goto_1
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->lRot128low(JJI)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_ke1:J

    :goto_2
    return-void
.end method

.method private wordToBytes(J[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v2, v0, 0x7

    add-int/2addr v2, p4

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Camellia"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->setKey(Z[B)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only simple KeyParameter expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->processBlock128([BI[BI)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->processBlock192or256([BI[BI)I

    move-result p1

    return p1

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

    const-string p2, "Camellia engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
