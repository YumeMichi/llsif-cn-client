.class public Lorg/bouncycastle/jce/provider/JDKDSASigner$ecNR256;
.super Lorg/bouncycastle/jce/provider/JDKDSASigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKDSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecNR256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/signers/ECNRSigner;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/signers/ECNRSigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/JDKDSASigner;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSA;)V

    return-void
.end method
