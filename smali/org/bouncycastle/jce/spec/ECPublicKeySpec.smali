.class public Lorg/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lorg/bouncycastle/jce/spec/ECKeySpec;


# instance fields
.field private q:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/bouncycastle/jce/spec/ECKeySpec;-><init>(Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getQ()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
