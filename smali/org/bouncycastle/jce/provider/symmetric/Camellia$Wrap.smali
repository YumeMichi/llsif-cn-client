.class public Lorg/bouncycastle/jce/provider/symmetric/Camellia$Wrap;
.super Lorg/bouncycastle/jce/provider/WrapCipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaWrapEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
