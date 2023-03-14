.class public Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;


# instance fields
.field private crlentries:Ljava/util/Vector;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lorg/bouncycastle/asn1/x509/X509Name;

.field nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERUTCTime;I)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;I)V

    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/DERGeneralizedTime;)V

    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/DERGeneralizedTime;)V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v3, p3}, Lorg/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    :try_start_0
    sget-object p3, Lorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance p3, Lorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p3, v2, v4}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error encoding reason: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    :try_start_1
    sget-object p3, Lorg/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance p3, Lorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getEncoded()[B

    move-result-object p4

    invoke-direct {v3, p4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p3, v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error encoding invalidityDate: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {p3, v0, v1}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_3

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/x509/TBSCertList;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all mandatory fields set in V2 TBSCertList generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/DERUTCTime;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/DERUTCTime;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method
