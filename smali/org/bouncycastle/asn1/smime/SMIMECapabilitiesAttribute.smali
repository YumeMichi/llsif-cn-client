.class public Lorg/bouncycastle/asn1/smime/SMIMECapabilitiesAttribute;
.super Lorg/bouncycastle/asn1/cms/Attribute;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;)V
    .locals 3

    sget-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->smimeCapabilities:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DERSet;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->toDEREncodableVector()Lorg/bouncycastle/asn1/DEREncodableVector;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-void
.end method
