.class public Lorg/bouncycastle/jce/provider/JCEStreamCipher$HC128;
.super Lorg/bouncycastle/jce/provider/JCEStreamCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HC128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/HC128Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lorg/bouncycastle/crypto/StreamCipher;I)V

    return-void
.end method
