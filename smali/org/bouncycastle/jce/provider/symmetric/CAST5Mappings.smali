.class public Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;
.super Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AlgorithmParameters.CAST5"

    const-string v1, "org.bouncycastle.jce.provider.symmetric.CAST5$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CAST5"

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10"

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameterGenerator.CAST5"

    const-string v2, "org.bouncycastle.jce.provider.symmetric.CAST5$AlgParamGen"

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10"

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.CAST5"

    const-string v2, "org.bouncycastle.jce.provider.symmetric.CAST5$ECB"

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.1.2.840.113533.7.66.10"

    const-string v2, "org.bouncycastle.jce.provider.symmetric.CAST5$CBC"

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyGenerator.CAST5"

    const-string v2, "org.bouncycastle.jce.provider.symmetric.CAST5$KeyGen"

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.KeyGenerator.1.2.840.113533.7.66.10"

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
