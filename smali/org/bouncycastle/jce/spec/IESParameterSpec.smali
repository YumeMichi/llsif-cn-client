.class public Lorg/bouncycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    iget-object p1, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return-void
.end method


# virtual methods
.method public getDerivationV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method
