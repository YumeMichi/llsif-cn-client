.class public Lorg/bouncycastle/jce/examples/PKCS12Example;
.super Ljava/lang/Object;


# static fields
.field static passwd:[C

.field static v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->passwd:[C

    new-instance v0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v0, Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    return-void

    :array_0
    .array-data 2
        0x68s
        0x65s
        0x6cs
        0x6cs
        0x6fs
        0x20s
        0x77s
        0x6fs
        0x72s
        0x6cs
        0x64s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "AU"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v4, "The Legion of the Bouncy Castle"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v5, "Bouncy Intermediate Certificate"

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v5, "feedback-crypto@bouncycastle.org"

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    sget-object v7, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v4, "Melbourne"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v4, "Eric H. Echidna"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->reset()V

    sget-object v3, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v3, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v4, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v4, v1, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v7, 0x9a7ec800L

    sub-long/2addr v3, v7

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v1, v6, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v2, p0}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;

    invoke-direct {v2, p2}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object p2, p1

    check-cast p2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DERBMPString;

    const-string v2, "Eric\'s Key"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v1, p0}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-interface {p2, v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    return-object p1
.end method

.method public static createIntermediateCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/cert/Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "AU"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "The Legion of the Bouncy Castle"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "Bouncy Intermediate Certificate"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v4, "feedback-crypto@bouncycastle.org"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->reset()V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-static {p2}, Lorg/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide v7, 0x9a7ec800L

    sub-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v4, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v4, v1, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v2, p0}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;

    invoke-direct {v2, p2}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0, v1, p0, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    sget-object p0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object p1, p0

    check-cast p1, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object p2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    return-object p0
.end method

.method public static createMasterCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    const-string v2, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    sub-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {p1, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object p0, p1

    check-cast p0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DERBMPString;

    const-string v2, "Bouncy Primary Certificate"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "11"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v2, "9f66f6b05410cd503b2709e88115d55daced94d1a34d4e32bf824d0dde6028ae79c5f07b580f5dce240d7111f7ddb130a7945cd7d957d1920994da389f490c89"

    invoke-direct {v9, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v2, "c0a0758cdf14256f78d4708c86becdead1b50ad4ad6c5c703e2168fbf37884cb"

    invoke-direct {v10, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v2, "f01734d7960ea60070f1b06f2bb81bfac48ff192ae18451d5e56c734a5aab8a5"

    invoke-direct {v11, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v2, "b54bb9edff22051d9ee60f9351a48591b6500a319429c069a3e335a1d6171391"

    invoke-direct {v12, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    const-string v2, "d3d83daf2a0cecd3367ae6f8ae1aeb82e9ac2f816c6fc483533d8297dd7884cd"

    invoke-direct {v13, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v2, "b8f52fc6f38593dabb661d3f50f8897f8106eee68b1bce78a95b132b4e5b5d19"

    invoke-direct {v14, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "8de0d113c5e736969c8d2b047a243f8fe18edad64cde9e842d3669230ca486f7cfdde1f8eec54d1905fff04acc85e61093e180cadc6cea407f193d44bb0e9449b8dbb49784cd9e36260c39e06a947299978c6ed8300724e887198cfede20f3fbde658fa2bd078be946a392bd349f2b49c486e20c405588e306706c9017308e69"

    invoke-direct {v4, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "ffff"

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v4, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v6, "7deb1b194a85bcfd29cf871411468adbc987650903e3bacc8338c449ca7b32efd39ffc33bc84412fcd7df18d23ce9d7c25ea910b1ae9985373e0273b4dca7f2e0db3b7314056ac67fd277f8f89cf2fd73c34c6ca69f9ba477143d2b0e2445548aa0b4a8473095182631da46844c356f5e5c7522eb54b5a33f11d730ead9c0cff"

    invoke-direct {v12, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    const-string v6, "ef4cede573cea47f83699b814de4302edb60eefe426c52e17bd7870ec7c6b7a24fe55282ebb73775f369157726fcfb988def2b40350bdca9e5b418340288f649"

    invoke-direct {v13, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v6, "97c7737d1b9a0088c3c7b528539247fd2a1593e7e01cef18848755be82f4a45aa093276cb0cbf118cb41117540a78f3fc471ba5d69f0042274defc9161265721"

    invoke-direct {v14, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v15, Ljava/math/BigInteger;

    const-string v6, "6c641094e24d172728b8da3c2777e69adfd0839085be7e38c7c4a2dd00b1ae969f2ec9d23e7e37090fcd449a40af0ed463fe1c612d6810d6b4f58b7bfa31eb5f"

    invoke-direct {v15, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "70b7123e8e69dfa76feb1236d0a686144b00e9232ed52b73847e74ef3af71fb45ccb24261f40d27f98101e230cf27b977a5d5f1f15f6cf48d5cb1da2a3a3b87f"

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "e38f5750d97e270996a286df2e653fd26c242106436f5bab0f4c7a9e654ce02665d5a281f2c412456f2d1fa26586ef04a9adac9004ca7f913162cb28e13bf40d"

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v9, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v9 .. v17}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v7, v9}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v7, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    const-string v5, "92e08f83cc9920746989ca5034dcb384a094fb9c5a6288fcc4304424ab8f56388f72652d8fafc65a4b9020896f2cde297080f2a540e7b7ce5af0b3446e1258d1dd7f245cf54124b4c6e17da21b90a0ebd22605e6f45c9f136d7a13eaac1c0f7487de8bd6d924972408ebb58af71e76fd7b012a8d0e165f3ae2e5077a8648e619"

    invoke-direct {v13, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v5, "f75e80839b9b9379f1cf1128f321639757dba514642c206bbbd99f9a4846208b3e93fbbe5e0527cc59b1d4b929d9555853004c7c8b30ee6a213c3d1bb7415d03"

    invoke-direct {v14, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v15, Ljava/math/BigInteger;

    const-string v5, "b892d9ebdbfc37e397256dd8a5d3123534d1f03726284743ddc6be3a709edb696fc40c7d902ed804c6eee730eee3d5b20bf6bd8d87a296813c87d3b3cc9d7947"

    invoke-direct {v15, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v8, "1d1a2d3ca8e52068b3094d501c9a842fec37f54db16e9a67070a8b3f53cc03d4257ad252a1a640eadd603724d7bf3737914b544ae332eedf4f34436cac25ceb5"

    invoke-direct {v5, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "6c929e4e81672fef49d9c825163fec97c4b7ba7acb26c0824638ac22605d7201c94625770984f78a56e6e25904fe7db407099cad9b14588841b94f5ab498dded"

    invoke-direct {v8, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "dae7651ee69ad1d081ec5e7188ae126f6004ff39556bde90e0b870962fa7b926d070686d8244fe5a9aa709a95686a104614834b0ada4b10f53197a5cb4c97339"

    invoke-direct {v9, v10, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v10, v7

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v3, "BC"

    const-string v5, "RSA"

    invoke-static {v5, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v5, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v5, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v5, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/security/cert/Certificate;

    invoke-static {v6, v7}, Lorg/bouncycastle/jce/examples/PKCS12Example;->createMasterCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/Certificate;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    aget-object v6, v5, v8

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-static {v2, v7, v6}, Lorg/bouncycastle/jce/examples/PKCS12Example;->createIntermediateCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/cert/Certificate;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/jce/examples/PKCS12Example;->createCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v5, v4

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/DERBMPString;

    const-string v7, "Eric\'s Key"

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v6, v0}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-interface {v2, v4, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    const-string v0, "PKCS12"

    invoke-static {v0, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0, v7, v1, v2, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "id.p12"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->passwd:[C

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    return-void
.end method
