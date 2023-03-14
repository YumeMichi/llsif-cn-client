.class Lorg/bouncycastle/math/ec/IntArray;
.super Ljava/lang/Object;


# instance fields
.field private m_ints:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [I

    aput v2, p1, v2

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    aget-byte v3, p1, v2

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, 0x3

    const/4 v5, 0x4

    div-int/2addr v4, v5

    if-ge v4, p2, :cond_2

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_1

    :cond_2
    new-array p2, v4, [I

    iput-object p2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :goto_1
    sub-int/2addr v4, v1

    rem-int/2addr v0, v5

    add-int/2addr v0, v3

    if-ge v3, v0, :cond_5

    const/4 p2, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    shl-int/lit8 p2, p2, 0x8

    aget-byte v1, p1, v3

    if-gez v1, :cond_3

    add-int/lit16 v1, v1, 0x100

    :cond_3
    or-int/2addr p2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v1, v4, -0x1

    aput p2, v0, v4

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    if-ltz v1, :cond_8

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_4
    if-ge p2, v5, :cond_7

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    if-gez v3, :cond_6

    add-int/lit16 v3, v3, 0x100

    :cond_6
    or-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v4

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aput v0, p2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only positive Integers allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method private resizedInts(I)[I
    .locals 3

    new-array v0, p1, [I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addShifted(Lorg/bouncycastle/math/ec/IntArray;I)V
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    add-int v1, v0, p2

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v3, v1, p2

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v1

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bitLength()I
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v2, v0

    shl-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    const/high16 v3, -0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v2, v2, 0x18

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x10

    ushr-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_2
    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v2, v2, 0x8

    :cond_3
    :goto_0
    if-eq v2, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/bouncycastle/math/ec/IntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public flipBit(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v1, v0

    xor-int/2addr p1, v2

    aput p1, v1, v0

    return-void
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    return v2

    :cond_0
    aget v0, v0, v2

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v3

    return v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_3

    add-int/2addr v1, v3

    return v1

    :cond_3
    if-gtz v1, :cond_2

    return v2
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isZero()Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public multiply(Lorg/bouncycastle/math/ec/IntArray;I)Lorg/bouncycastle/math/ec/IntArray;
    .locals 6

    add-int/lit8 v0, p2, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getLength()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {p1, v2}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    new-instance p1, Lorg/bouncycastle/math/ec/IntArray;

    add-int/2addr p2, p2

    add-int/lit8 p2, p2, 0x1f

    shr-int/lit8 p2, p2, 0x5

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v4

    and-int/2addr v5, v3

    if-eqz v5, :cond_1

    invoke-virtual {p1, v1, v4}, Lorg/bouncycastle/math/ec/IntArray;->addShifted(Lorg/bouncycastle/math/ec/IntArray;I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/IntArray;->shiftLeft()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public reduce(I[I)V
    .locals 4

    add-int v0, p1, p1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lt v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    array-length v2, p2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    aget v3, p2, v2

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method public setBit(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v1, v0

    or-int/2addr p1, v2

    aput p1, v1, v0

    return-void
.end method

.method public shiftLeft(I)Lorg/bouncycastle/math/ec/IntArray;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    rsub-int/lit8 v2, p1, 0x20

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    shl-int/2addr v3, p1

    aput v3, v1, v4

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v3

    shl-int/2addr v5, p1

    add-int/lit8 v6, v3, -0x1

    aget v4, v4, v6

    ushr-int/2addr v4, v2

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v3, v0, -0x1

    aget p1, p1, v3

    ushr-int/2addr p1, v2

    aput p1, v1, v0

    new-instance p1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {p1, v1}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shiftLeft() for max 31 bits , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "bit shift is not possible"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public shiftLeft()V
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    array-length v2, v1

    if-le v0, v2, :cond_1

    array-length v1, v1

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v2

    if-gez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v7, v6, v2

    shl-int/2addr v7, v3

    aput v7, v6, v2

    if-eqz v4, :cond_3

    aget v4, v6, v2

    or-int/2addr v4, v3

    aput v4, v6, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    :cond_4
    return-void
.end method

.method public square(I)Lorg/bouncycastle/math/ec/IntArray;
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v2

    if-ge v2, p1, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_0
    new-instance v2, Lorg/bouncycastle/math/ec/IntArray;

    add-int v3, p1, p1

    invoke-direct {v2, v3}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x4

    if-ge v5, v7, :cond_1

    ushr-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v7, v7, v4

    mul-int/lit8 v8, v5, 0x4

    ushr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    aget v7, v1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v2, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v8, v4, v4

    aput v6, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v4

    ushr-int/2addr v5, v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v6, v7, :cond_2

    ushr-int/lit8 v9, v9, 0x8

    mul-int/lit8 v10, v6, 0x4

    ushr-int v10, v5, v10

    and-int/lit8 v10, v10, 0xf

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v2, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v8, v8, 0x1

    aput v9, v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
    .end array-data
.end method

.method public testBit(I)Z
    .locals 3

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v2, v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 12

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ltz v7, :cond_3

    mul-int/lit8 v11, v7, 0x8

    ushr-int v11, v1, v11

    int-to-byte v11, v11

    if-nez v9, :cond_1

    if-eqz v11, :cond_2

    :cond_1
    add-int/lit8 v9, v8, 0x1

    aput-byte v11, v4, v8

    move v8, v9

    const/4 v9, 0x1

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v8

    new-array v1, v2, [B

    :goto_1
    if-ge v6, v8, :cond_4

    aget-byte v2, v4, v6

    aput-byte v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_6

    const/4 v2, 0x3

    :goto_3
    if-ltz v2, :cond_5

    add-int/lit8 v3, v8, 0x1

    iget-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    mul-int/lit8 v6, v2, 0x8

    ushr-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    add-int/lit8 v2, v2, -0x1

    move v8, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v10, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    const-string v1, "0"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
