.class public Lorg/bouncycastle/jce/provider/JCEBlockCipher$RC6;
.super Lorg/bouncycastle/jce/provider/JCEBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC6"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/RC6Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RC6Engine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
