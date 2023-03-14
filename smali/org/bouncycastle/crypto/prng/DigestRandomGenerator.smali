.class public Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/RandomGenerator;


# instance fields
.field private counter:J

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private state:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->counter:J

    return-void
.end method

.method private digestDoFinal([B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private digestUpdate(J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    long-to-int v3, p1

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private digestUpdate([B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    long-to-int v2, p1

    int-to-byte v2, v2

    int-to-long v2, v2

    :try_start_0
    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate(J)V

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public addSeedMaterial([B)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public nextBytes([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([BII)V

    return-void
.end method

.method public nextBytes([BII)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    add-int/2addr p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x1

    if-eq p2, p3, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    array-length v4, v4

    if-ne v1, v4, :cond_0

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->counter:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->counter:J

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate(J)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->counter:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->counter:J

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate(J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
