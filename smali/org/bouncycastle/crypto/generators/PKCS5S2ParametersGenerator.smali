.class public Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;


# instance fields
.field private hMac:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method

.method private F([B[BI[B[BI)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v3, p2

    invoke-interface {v2, p2, p1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, p4

    invoke-interface {p2, p4, p1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2, v0, p1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    array-length p2, v0

    invoke-static {v0, p1, p5, p6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p3, :cond_2

    iget-object p4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p4, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, v0

    invoke-interface {p4, v0, p1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p4, v0, p1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    const/4 p4, 0x0

    :goto_1
    array-length v2, v0

    if-eq p4, v2, :cond_1

    add-int v2, p6, p4

    aget-byte v3, p5, v2

    aget-byte v4, v0, p4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p5, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iteration count must be at least 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private generateDerivedKey(I)[B
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    mul-int v3, p1, v0

    new-array v10, v3, [B

    :goto_0
    if-gt v1, p1, :cond_0

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->intToOctet([BI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v6, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    add-int/lit8 v3, v1, -0x1

    mul-int v9, v3, v0

    move-object v3, p0

    move-object v7, v2

    move-object v8, v10

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([B[BI[B[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method private intToOctet([BI)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    int-to-byte p2, p2

    const/4 v0, 0x3

    aput-byte p2, p1, v0

    return-void
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
