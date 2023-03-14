.class public Lorg/bouncycastle/asn1/util/DERDump;
.super Lorg/bouncycastle/asn1/util/ASN1Dump;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/util/ASN1Dump;-><init>()V

    return-void
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/DEREncodable;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
