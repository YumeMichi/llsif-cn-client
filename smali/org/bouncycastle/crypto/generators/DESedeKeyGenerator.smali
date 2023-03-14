.class public Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lorg/bouncycastle/crypto/generators/DESKeyGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v0, v0, [B

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v0, 0x18

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    const/16 v2, 0x10

    if-ne p1, v1, :cond_1

    iput v2, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DESede key must be 192 or 128 bits long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    :cond_4
    :goto_1
    return-void
.end method
