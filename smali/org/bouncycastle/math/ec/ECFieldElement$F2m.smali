.class public Lorg/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lorg/bouncycastle/math/ec/ECFieldElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private representation:I

.field private t:I

.field private x:Lorg/bouncycastle/math/ec/IntArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v0, p5, v1}, Lorg/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_1

    :cond_0
    if-ge p3, p4, :cond_3

    if-lez p3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result p5

    if-ltz p5, :cond_1

    iput p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iput p2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iput p4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x value cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be larger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be smaller than k3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private constructor <init>(IIIILorg/bouncycastle/math/ec/IntArray;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    iput-object p5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    iput p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iput p2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iput p4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-void
.end method

.method public static checkFieldElements(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget p1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the field elements are not elements has incorrect representation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not elements of the same field F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/bouncycastle/math/ec/IntArray;

    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    const/4 v0, 0x0

    invoke-virtual {v6, p1, v0}, Lorg/bouncycastle/math/ec/IntArray;->addShifted(Lorg/bouncycastle/math/ec/IntArray;I)V

    new-instance p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/bouncycastle/math/ec/IntArray;)V

    return-object p1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/IntArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/IntArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/IntArray;

    new-instance v1, Lorg/bouncycastle/math/ec/IntArray;

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    :cond_0
    new-instance v3, Lorg/bouncycastle/math/ec/IntArray;

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    new-instance v2, Lorg/bouncycastle/math/ec/IntArray;

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v2, v4}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    move-object v6, v2

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/IntArray;->isZero()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v4

    sub-int/2addr v2, v4

    if-gez v2, :cond_1

    neg-int v2, v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v6

    move-object v6, v3

    move-object v3, v8

    :cond_1
    shr-int/lit8 v4, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lorg/bouncycastle/math/ec/IntArray;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lorg/bouncycastle/math/ec/IntArray;->addShifted(Lorg/bouncycastle/math/ec/IntArray;I)V

    invoke-virtual {v6, v2}, Lorg/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lorg/bouncycastle/math/ec/IntArray;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/math/ec/IntArray;->addShifted(Lorg/bouncycastle/math/ec/IntArray;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 8

    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/math/ec/IntArray;->multiply(Lorg/bouncycastle/math/ec/IntArray;I)Lorg/bouncycastle/math/ec/IntArray;

    move-result-object v7

    iget p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {v7, p1, v0}, Lorg/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v6, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/bouncycastle/math/ec/IntArray;)V

    return-object p1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/IntArray;->square(I)Lorg/bouncycastle/math/ec/IntArray;

    move-result-object v7

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-virtual {v7, v0, v1}, Lorg/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v6, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/IntArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
