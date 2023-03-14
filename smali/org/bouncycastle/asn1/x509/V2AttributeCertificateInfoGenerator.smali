.class public Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;
.super Ljava/lang/Object;


# instance fields
.field private attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

.field private endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field private extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field private holder:Lorg/bouncycastle/asn1/x509/Holder;

.field private issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

.field private serialNumber:Lorg/bouncycastle/asn1/DERInteger;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field private version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Attribute;

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/asn1/x509/Attribute;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public addAttribute(Lorg/bouncycastle/asn1/x509/Attribute;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public generateAttributeCertificateInfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 AttributeCertificateInfo generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method public setHolder(Lorg/bouncycastle/asn1/x509/Holder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    return-void
.end method

.method public setIssuerUniqueID(Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/DERInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setStartDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-void
.end method
