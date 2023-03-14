.class public Lorg/bouncycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final cTAG:B = 0x2t

.field private static final hTAG:B = 0x1t

.field private static final nTAG:B


# instance fields
.field private associatedTextMac:[B

.field private blockSize:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

.field private forEncryption:Z

.field private mac:Lorg/bouncycastle/crypto/Mac;

.field private macBlock:[B

.field private macSize:I

.field private nonceMac:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-instance v0, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    new-instance v0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    return-void
.end method

.method private calculateMac()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    aget-byte v4, v0, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private process(B[BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {p1, v0, v2, p2, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v0, p2, p3, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {p1, v0, v2, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {p1, v0, v2, p2, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result p1

    :goto_0
    iget p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iput p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object p3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-static {p3, p2, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p1

    :cond_1
    return v2
.end method

.method private verifyMac([BI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    aget-byte v2, v2, v1

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v2, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v4, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-virtual {v1, v4, v5, v2, v5}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    add-int/2addr p2, v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v0, p1

    return v0

    :cond_0
    iget v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-le v0, v4, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    sub-int v4, v0, v4

    invoke-interface {v5, v1, v3, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v1, v4, v3, v2, v3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-virtual {v1, v4, v5, v2, v5}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v1, v0, v1

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int p2, v0, p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->verifyMac([BI)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, p1

    return v0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "mac check in EAX failed"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/EAX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getMac()[B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    div-int/2addr p1, v0

    mul-int p1, p1, v0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    new-array v2, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    div-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v3, v3, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v4, p2}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v5, v3, v1, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v5, v2

    invoke-interface {v4, v2, v1, v5}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    invoke-interface {v2, v4, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v4, v2, -0x1

    aput-byte v1, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v4, p1

    invoke-interface {v2, p1, v1, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v2, p1, -0x1

    aput-byte v0, v3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, v3, v1, p1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v6, v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to EAX"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq v0, p3, :cond_0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p5, v1

    invoke-direct {p0, v2, p4, v3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    return-void
.end method
