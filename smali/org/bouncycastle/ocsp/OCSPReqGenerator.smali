.class public Lorg/bouncycastle/ocsp/OCSPReqGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field private requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method private generateRequest(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "exception creating signature: "

    iget-object v1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;

    invoke-virtual {v3}, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;->toRequest()Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    const-string p3, "exception creating Request"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    iget-object v3, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iget-object v2, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p4

    if-eqz p5, :cond_1

    invoke-virtual {p4, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p4, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p5, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {p5, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p5, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/security/Signature;->update([B)V

    new-instance p2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p4}, Ljava/security/Signature;->sign()[B

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    new-instance p4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance p5, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p5}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {p4, p1, p5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    if-eqz p3, :cond_3

    array-length p1, p3

    if-lez p1, :cond_3

    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 p5, 0x0

    :goto_2
    :try_start_3
    array-length v0, p3

    if-eq p5, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    aget-object v2, p3, p5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->makeObj([B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/Signature;

    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, p4, p2, p3}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_3

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    const-string p3, "error encoding certs"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    const-string p3, "error processing certs"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_3
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {v2, p4, p2}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    goto :goto_3

    :catch_3
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exception processing TBSRequest: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_4
    new-instance p1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string p2, "requestorName must be specified if request is signed."

    invoke-direct {p1, p2}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    new-instance p1, Lorg/bouncycastle/ocsp/OCSPReq;

    new-instance p2, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V

    return-object p1
.end method

.method private makeObj([B)Lorg/bouncycastle/asn1/DERObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addRequest(Lorg/bouncycastle/ocsp/CertificateID;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;-><init>(Lorg/bouncycastle/ocsp/OCSPReqGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequest(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;

    invoke-direct {v1, p0, p1, p2}, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;-><init>(Lorg/bouncycastle/ocsp/OCSPReqGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generate()Lorg/bouncycastle/ocsp/OCSPReq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generateRequest(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no provider! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/ocsp/OCSPReq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;

    move-result-object p1

    return-object p1
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/ocsp/OCSPUtil;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generateRequest(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unknown signing algorithm specified: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no signing algorithm specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/ocsp/OCSPUtil;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setRequestExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method public setRequestorName(Ljavax/security/auth/x500/X500Principal;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x4

    new-instance v2, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot encode principal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method
