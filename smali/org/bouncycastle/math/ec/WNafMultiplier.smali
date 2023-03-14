.class Lorg/bouncycastle/math/ec/WNafMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9

    if-eqz p3, :cond_0

    instance-of v0, p3, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v1, 0x29

    if-ge v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/16 v1, 0x79

    if-ge v0, v1, :cond_3

    const/4 v0, 0x4

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    const/16 v1, 0x151

    if-ge v0, v1, :cond_4

    const/4 v0, 0x5

    const/16 v0, 0x8

    const/4 v2, 0x5

    goto :goto_1

    :cond_4
    const/16 v1, 0x381

    if-ge v0, v1, :cond_5

    const/4 v2, 0x6

    const/16 v0, 0x10

    goto :goto_1

    :cond_5
    const/16 v1, 0x901

    if-ge v0, v1, :cond_6

    const/4 v2, 0x7

    const/16 v0, 0x20

    goto :goto_1

    :cond_6
    const/16 v0, 0x7f

    :goto_1
    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwiceP()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    const/4 v6, 0x0

    if-nez v1, :cond_7

    new-array v1, v5, [Lorg/bouncycastle/math/ec/ECPoint;

    aput-object p1, v1, v6

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    array-length v7, v1

    :goto_2
    if-nez v3, :cond_8

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    :cond_8
    if-ge v7, v0, :cond_a

    new-array v8, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    invoke-static {v1, v6, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    if-ge v7, v0, :cond_9

    add-int/lit8 v1, v7, -0x1

    aget-object v1, v8, v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    move-object v1, v8

    :cond_a
    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/math/ec/WNafMultiplier;->windowNaf(BLjava/math/BigInteger;)[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    sub-int/2addr v0, v5

    :goto_4
    if-ltz v0, :cond_d

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aget-byte v6, p2, v0

    if-eqz v6, :cond_c

    aget-byte v6, p2, v0

    if-lez v6, :cond_b

    aget-byte v6, p2, v0

    sub-int/2addr v6, v5

    div-int/2addr v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v2, v6}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_5

    :cond_b
    aget-byte v6, p2, v0

    neg-int v6, v6

    sub-int/2addr v6, v5

    div-int/2addr v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v2, v6}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_d
    invoke-virtual {p3, v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {p3, v3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwiceP(Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/math/ec/ECPoint;->setPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)V

    return-object v2
.end method

.method public windowNaf(BLjava/math/BigInteger;)[B
    .locals 9

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shl-int v2, v1, p1

    int-to-short v2, v2

    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    :goto_1
    aget-byte v5, v0, v6

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    move v5, v6

    goto :goto_2

    :cond_1
    aput-byte v4, v0, v6

    :goto_2
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v5, v1

    new-array p1, v5, [B

    invoke-static {v0, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
