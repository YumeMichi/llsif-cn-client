.class public Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ECDH;
.super Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDH"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ECDH"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$EC;-><init>(Ljava/lang/String;)V

    return-void
.end method
