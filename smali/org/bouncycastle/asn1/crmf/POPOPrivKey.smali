.class public Lorg/bouncycastle/asn1/crmf/POPOPrivKey;
.super Lorg/bouncycastle/asn1/ASN1Encodable;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private obj:Lorg/bouncycastle/asn1/DERObject;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/DERObject;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    new-instance p1, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    return-object p1
.end method


# virtual methods
.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
