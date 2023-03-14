.class public Lorg/bouncycastle/asn1/x9/X9Curve;
.super Lorg/bouncycastle/asn1/ASN1Encodable;

# interfaces
.implements Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lorg/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x9/X9FieldID;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 13

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    invoke-virtual {p2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, p1, v3}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v3, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v3, p1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v2, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    move v11, p1

    move p1, v4

    move v10, v5

    :goto_1
    new-instance v12, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    invoke-virtual {p2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v4, v12

    move v5, v0

    move v6, p1

    move v7, v10

    move v8, v11

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILorg/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v3, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILorg/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v2, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v2

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    instance-of v1, v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v1, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1

    :cond_0
    instance-of v0, v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_2

    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
