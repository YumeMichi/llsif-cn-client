.class public Lorg/bouncycastle/crypto/digests/SHA512Digest;
.super Lorg/bouncycastle/crypto/digests/LongDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA512Digest;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    add-int/lit8 p2, p2, 0x38

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->unpackWord(J[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    const/16 p1, 0x40

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    return-void
.end method
