.class public Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final sigma:[B

.field private static final stateSize:I = 0x10

.field private static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private workingIV:[B

.field private workingKey:[B

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    const/16 v1, 0x10

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void
.end method

.method private byteToIntLittle([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private intToByteLittle(I[BI)[B
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-object p2
.end method

.method private limitExceeded()Z
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method private limitExceeded(I)Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    goto :goto_1

    :cond_0
    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz p1, :cond_2

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez p1, :cond_2

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private resetCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    return-void
.end method

.method private rotl(II)I
    .locals 1

    shl-int v0, p1, p2

    neg-int p2, p2

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private salsa20WordToByte([I[B)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    const/4 v6, 0x4

    if-ge v3, v4, :cond_0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v8, v7, v6

    aget v9, v7, v5

    const/16 v10, 0xc

    aget v11, v7, v10

    add-int/2addr v9, v11

    const/4 v11, 0x7

    invoke-direct {v0, v9, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v7, v6

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v8, 0x8

    aget v9, v7, v8

    aget v12, v7, v6

    aget v13, v7, v5

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v12

    xor-int/2addr v9, v12

    aput v9, v7, v8

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v9, v7, v10

    aget v12, v7, v8

    aget v14, v7, v6

    add-int/2addr v12, v14

    const/16 v14, 0xd

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v12

    xor-int/2addr v9, v12

    aput v9, v7, v10

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v9, v7, v5

    aget v12, v7, v10

    aget v15, v7, v8

    add-int/2addr v12, v15

    const/16 v15, 0x12

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v12

    xor-int/2addr v9, v12

    aput v9, v7, v5

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v9, v7, v13

    const/4 v12, 0x5

    aget v16, v7, v12

    const/16 v17, 0x1

    aget v18, v7, v17

    add-int v10, v16, v18

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v9, v10

    aput v9, v7, v13

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v9, v7, v14

    aget v10, v7, v13

    aget v16, v7, v12

    add-int v10, v10, v16

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v9, v10

    aput v9, v7, v14

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v9, v7, v17

    aget v10, v7, v14

    aget v16, v7, v13

    add-int v10, v10, v16

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v9, v10

    aput v9, v7, v17

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v9, v7, v12

    aget v10, v7, v17

    aget v16, v7, v14

    add-int v10, v10, v16

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v9, v10

    aput v9, v7, v12

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v9, 0xe

    aget v10, v7, v9

    aget v16, v7, v4

    const/16 v18, 0x6

    aget v19, v7, v18

    add-int v8, v16, v19

    invoke-direct {v0, v8, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int/2addr v8, v10

    aput v8, v7, v9

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v8, 0x2

    aget v10, v7, v8

    aget v16, v7, v9

    aget v19, v7, v4

    add-int v6, v16, v19

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v6, v10

    aput v6, v7, v8

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v7, v6, v18

    aget v10, v6, v8

    aget v16, v6, v9

    add-int v10, v10, v16

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v7, v10

    aput v7, v6, v18

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v7, v6, v4

    aget v10, v6, v18

    aget v16, v6, v8

    add-int v10, v10, v16

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v7, v10

    aput v7, v6, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x3

    aget v10, v6, v7

    const/16 v16, 0xf

    aget v16, v6, v16

    const/16 v19, 0xb

    aget v19, v6, v19

    add-int v9, v16, v19

    invoke-direct {v0, v9, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v9, v10

    aput v9, v6, v7

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v9, v6, v11

    aget v10, v6, v7

    const/16 v16, 0xf

    aget v16, v6, v16

    add-int v10, v10, v16

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v9, v10

    aput v9, v6, v11

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v9, 0xb

    aget v10, v6, v9

    aget v16, v6, v11

    aget v19, v6, v7

    add-int v4, v16, v19

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v4, v10

    aput v4, v6, v9

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v9, v4, v6

    const/16 v10, 0xb

    aget v10, v4, v10

    aget v16, v4, v11

    add-int v10, v10, v16

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int/2addr v9, v10

    aput v9, v4, v6

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v4, v17

    aget v9, v4, v5

    aget v10, v4, v7

    add-int/2addr v9, v10

    invoke-direct {v0, v9, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v6, v9

    aput v6, v4, v17

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v4, v8

    aget v9, v4, v17

    aget v10, v4, v5

    add-int/2addr v9, v10

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v6, v9

    aput v6, v4, v8

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v4, v7

    aget v9, v4, v8

    aget v10, v4, v17

    add-int/2addr v9, v10

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v6, v9

    aput v6, v4, v7

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v4, v5

    aget v7, v4, v7

    aget v8, v4, v8

    add-int/2addr v7, v8

    invoke-direct {v0, v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v4, v18

    aget v7, v4, v12

    const/4 v8, 0x4

    aget v9, v4, v8

    add-int/2addr v7, v9

    invoke-direct {v0, v7, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, v4, v18

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v4, v11

    aget v7, v4, v18

    aget v8, v4, v12

    add-int/2addr v7, v8

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, v4, v11

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x4

    aget v7, v4, v6

    aget v8, v4, v11

    aget v9, v4, v18

    add-int/2addr v8, v9

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v4, v6

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v7, v4, v12

    aget v6, v4, v6

    aget v8, v4, v11

    add-int/2addr v6, v8

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v6, v7

    aput v6, v4, v12

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xb

    aget v7, v4, v6

    const/16 v8, 0xa

    aget v9, v4, v8

    aget v10, v4, v13

    add-int/2addr v9, v10

    invoke-direct {v0, v9, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v7, v9

    aput v7, v4, v6

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0x8

    aget v7, v4, v6

    const/16 v9, 0xb

    aget v9, v4, v9

    aget v10, v4, v8

    add-int/2addr v9, v10

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v4, v6

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v7, v4, v13

    aget v8, v4, v6

    const/16 v9, 0xb

    aget v9, v4, v9

    add-int/2addr v8, v9

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v4, v13

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xa

    aget v8, v4, v7

    aget v9, v4, v13

    aget v6, v4, v6

    add-int/2addr v9, v6

    invoke-direct {v0, v9, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v6, v8

    aput v6, v4, v7

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xc

    aget v7, v4, v6

    const/16 v8, 0xf

    aget v8, v4, v8

    const/16 v9, 0xe

    aget v10, v4, v9

    add-int/2addr v8, v10

    invoke-direct {v0, v8, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v4, v6

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v7, v4, v14

    aget v8, v4, v6

    const/16 v9, 0xf

    aget v9, v4, v9

    add-int/2addr v8, v9

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v4, v14

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xe

    aget v8, v4, v7

    aget v9, v4, v14

    aget v6, v4, v6

    add-int/2addr v9, v6

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v6, v8

    aput v6, v4, v7

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v8, v4, v6

    aget v7, v4, v7

    aget v9, v4, v14

    add-int/2addr v7, v9

    invoke-direct {v0, v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v7, v8

    aput v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x10

    if-ge v5, v4, :cond_1

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v4, v4, v5

    aget v6, v1, v5

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->intToByteLittle(I[BI)[B

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_2
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget v4, v4, v1

    invoke-direct {v0, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->intToByteLittle(I[BI)[B

    const/4 v4, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setKey([B[B)V
    .locals 9

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p2, v1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v0

    const/4 v3, 0x2

    aput v0, p2, v3

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v0

    const/4 v4, 0x3

    aput v0, p2, v4

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    const/16 v4, 0xc

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v0

    aput v0, p2, v2

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    array-length p2, p2

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    sget-object p2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v6, 0xb

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v7, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v7

    aput v7, v5, v6

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v6, 0xd

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v8, v0, 0x8

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v7

    aput v7, v5, v6

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v6, 0xe

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/2addr v0, v4

    invoke-direct {p0, v7, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v0

    aput v0, v5, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v5

    aput v5, v0, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x5

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v6

    aput v6, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v5, 0xa

    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v6

    aput v6, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v5, 0xf

    invoke-direct {p0, p2, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result p2

    aput p2, v0, v5

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v0, 0x6

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v4, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, p2, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v0, 0x7

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v2

    aput v2, p2, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v0, 0x9

    aput p1, p2, v0

    aput p1, p2, v3

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Salsa20"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Salsa20 Init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Salsa20 requires exactly 8 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Salsa20 Init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)V
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-eqz v0, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_3

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsa20WordToByte([I[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x8

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    aget v2, v1, v2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_0
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v4, v0, p2

    aget-byte v4, p1, v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v1, v3, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string p2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

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
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    return-void
.end method

.method public returnByte(B)B
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsa20WordToByte([I[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    aget v1, v0, v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v1, 0x3f

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string v0, "2^70 byte limit per IV; Change IV"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
