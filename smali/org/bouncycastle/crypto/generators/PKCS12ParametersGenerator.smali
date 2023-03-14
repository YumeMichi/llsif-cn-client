.class public Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v0, p1, Lorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    check-cast p1, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unsupported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjust([BI[B)V
    .locals 5

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    ushr-int/lit8 v0, v0, 0x8

    array-length v1, p3

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_0

    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    int-to-byte v2, v0

    aput-byte v2, p1, v3

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateDerivedKey(II)[B
    .locals 11

    iget v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v0, v0, [B

    new-array v1, p2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_0

    int-to-byte v4, p1

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length p1, p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/2addr v4, v5

    mul-int p1, p1, v4

    new-array p1, p1, [B

    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v6, v6

    rem-int v6, v4, v6

    aget-byte v5, v5, v6

    aput-byte v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-array p1, v2, [B

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v4, v4

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    div-int/2addr v5, v6

    mul-int v4, v4, v5

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_2
    array-length v6, v4

    if-eq v5, v6, :cond_4

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v7, v7

    rem-int v7, v5, v7

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-array v4, v2, [B

    :cond_4
    array-length v5, p1

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    array-length v6, p1

    invoke-static {p1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v6, v4

    invoke-static {v4, v2, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array p1, p1, [B

    iget v4, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int/2addr p2, v4

    sub-int/2addr p2, v3

    div-int/2addr p2, v4

    const/4 v4, 0x1

    :goto_3
    if-gt v4, p2, :cond_9

    iget v6, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v6, v6, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v0

    invoke-interface {v7, v0, v2, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v5

    invoke-interface {v7, v5, v2, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v6, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v7, 0x1

    :goto_4
    iget v8, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    if-eq v7, v8, :cond_5

    iget-object v8, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, v6

    invoke-interface {v8, v6, v2, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v6, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_5
    array-length v8, p1

    if-eq v7, v8, :cond_6

    array-length v8, v6

    rem-int v8, v7, v8

    aget-byte v8, v6, v8

    aput-byte v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_6
    array-length v8, v5

    iget v9, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v8, v9

    if-eq v7, v8, :cond_7

    mul-int v9, v9, v7

    invoke-direct {p0, v5, v9, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    if-ne v4, p2, :cond_8

    add-int/lit8 v7, v4, -0x1

    iget v8, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int v9, v7, v8

    array-length v10, v1

    mul-int v7, v7, v8

    sub-int/2addr v10, v7

    invoke-static {v6, v2, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_8
    add-int/lit8 v7, v4, -0x1

    iget v8, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int v7, v7, v8

    array-length v8, v6

    invoke-static {v6, v2, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    return-object v1
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
