.class public Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private add([B[BI)V
    .locals 2

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p3

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    int-to-byte v1, v0

    aput-byte v1, p1, p3

    ushr-int/lit8 p3, v0, 0x8

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p3, v1

    int-to-byte v1, p3

    aput-byte v1, p1, v0

    ushr-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v1, v1, [B

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iget v6, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    add-int/lit8 v7, v6, -0x1

    div-int/lit16 v7, v7, 0xa0

    div-int/lit8 v6, v6, 0x8

    new-array v6, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v8

    move-object v11, v10

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_0
    if-nez v8, :cond_5

    :cond_0
    iget-object v11, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v11, v2

    invoke-virtual {v5, v2, v9, v11}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    invoke-virtual {v5, v3, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    array-length v11, v2

    invoke-static {v2, v9, v4, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x1

    invoke-direct {v0, v4, v2, v11}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    array-length v12, v4

    invoke-virtual {v5, v4, v9, v12}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    invoke-virtual {v5, v4, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    const/4 v12, 0x0

    :goto_1
    array-length v13, v1

    if-eq v12, v13, :cond_1

    aget-byte v13, v3, v12

    aget-byte v14, v4, v12

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    aget-byte v12, v1, v9

    or-int/lit8 v12, v12, -0x80

    int-to-byte v12, v12

    aput-byte v12, v1, v9

    const/16 v12, 0x13

    aget-byte v13, v1, v12

    or-int/2addr v13, v11

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget v13, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x2

    move-object v14, v10

    const/4 v10, 0x0

    :goto_2
    const/16 v15, 0x1000

    if-ge v10, v15, :cond_4

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v7, :cond_2

    add-int v15, v13, v14

    invoke-direct {v0, v3, v2, v15}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    array-length v15, v3

    invoke-virtual {v5, v3, v9, v15}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    invoke-virtual {v5, v3, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    array-length v15, v6

    add-int/lit8 v14, v14, 0x1

    array-length v11, v3

    mul-int v11, v11, v14

    sub-int/2addr v15, v11

    array-length v11, v3

    invoke-static {v3, v9, v6, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    add-int v11, v13, v7

    invoke-direct {v0, v3, v2, v11}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    array-length v11, v3

    invoke-virtual {v5, v3, v9, v11}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    invoke-virtual {v5, v3, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    array-length v11, v3

    array-length v14, v6

    array-length v15, v3

    mul-int v15, v15, v7

    sub-int/2addr v14, v15

    sub-int/2addr v11, v14

    array-length v14, v6

    array-length v15, v3

    mul-int v15, v15, v7

    sub-int/2addr v14, v15

    invoke-static {v3, v11, v6, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v11, v6, v9

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v6, v9

    new-instance v11, Ljava/math/BigInteger;

    const/4 v15, 0x1

    invoke-direct {v11, v15, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v14, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    sget-object v9, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v14, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    iget v9, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    sub-int/2addr v9, v15

    invoke-virtual {v14, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v14, v9}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v13, v9

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    move-object v11, v12

    const/4 v9, 0x0

    move v12, v10

    move-object v10, v14

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_6
    :goto_5
    new-instance v3, Ljava/math/BigInteger;

    iget v4, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    iget-object v5, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v4, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_6

    sget-object v4, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v1, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v4, v2, v12}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v10, v11, v3, v4}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v1
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    iput p2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
