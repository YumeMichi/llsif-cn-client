.class Lorg/bouncycastle/math/ec/WTauNafMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;[BLorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    if-eqz p2, :cond_1

    instance-of v1, p2, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/Tnaf;->getPreComp(Lorg/bouncycastle/math/ec/ECPoint$F2m;B)[Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v0, p2}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>([Lorg/bouncycastle/math/ec/ECPoint$F2m;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->setPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)V

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    invoke-static {p0}, Lorg/bouncycastle/math/ec/Tnaf;->tau(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    aget-byte v1, p1, v0

    if-eqz v1, :cond_3

    aget-byte v1, p1, v0

    if-lez v1, :cond_2

    aget-byte v1, p1, v0

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    goto :goto_3

    :cond_2
    aget-byte v1, p1, v0

    neg-int v1, v1

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method private multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;Lorg/bouncycastle/math/ec/ZTauElement;Lorg/bouncycastle/math/ec/PreCompInfo;BB)Lorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 6

    if-nez p4, :cond_0

    sget-object p4, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    :goto_0
    move-object v5, p4

    const/4 p4, 0x4

    invoke-static {p5, p4}, Lorg/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v2, 0x4

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;[BLorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v9

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v6

    const/16 v8, 0xa

    move-object v3, p2

    move v5, v0

    move v7, v9

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;Lorg/bouncycastle/math/ec/ZTauElement;Lorg/bouncycastle/math/ec/PreCompInfo;BB)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
