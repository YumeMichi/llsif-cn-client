.class public Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private responderID:Lorg/bouncycastle/ocsp/RespID;

.field private responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    new-instance v0, Lorg/bouncycastle/ocsp/RespID;

    invoke-direct {v0, p1}, Lorg/bouncycastle/ocsp/RespID;-><init>(Ljava/security/PublicKey;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/bouncycastle/ocsp/RespID;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/ocsp/RespID;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    iput-object p1, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/bouncycastle/ocsp/RespID;

    return-void
.end method

.method private generateResponse(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "exception creating signature: "

    iget-object v1, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/ocsp/OCSPUtil;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    invoke-virtual {v4}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    const-string p3, "exception creating Request"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    iget-object v4, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/bouncycastle/ocsp/RespID;

    invoke-virtual {v4}, Lorg/bouncycastle/ocsp/RespID;->toASN1Object()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v5, p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance p4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p4, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iget-object v3, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v4, v5, p4, v3}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    :try_start_2
    invoke-static {p1, p5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    if-eqz p6, :cond_1

    invoke-virtual {p1, p2, p6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    :try_start_3
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p4, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {p4, p2}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p4, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    new-instance p2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v2}, Lorg/bouncycastle/ocsp/OCSPUtil;->getSigAlgID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    if-eqz p3, :cond_3

    array-length p4, p3

    if-lez p4, :cond_3

    new-instance p4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 p5, 0x0

    :goto_2
    :try_start_4
    array-length p6, p3

    if-eq p5, p6, :cond_2

    new-instance p6, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    aget-object v0, p3, p5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->makeObj([B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p6, v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {p4, p6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_2
    new-instance p3, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    new-instance p5, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    new-instance p6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p6, p4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {p5, v1, p1, p2, p6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {p3, p5}, Lorg/bouncycastle/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object p3

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
    new-instance p3, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    new-instance p4, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    const/4 p5, 0x0

    invoke-direct {p4, v1, p1, p2, p5}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {p3, p4}, Lorg/bouncycastle/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object p3

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

    :catch_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown signing algorithm specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
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
.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v8, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v8, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v8, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v8, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;

    move-result-object p1

    return-object p1
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->generateResponse(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;

    move-result-object p1

    return-object p1

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

.method public setResponseExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method
