.class public Lorg/bouncycastle/x509/examples/AttrCertExample;
.super Ljava/lang/Object;


# static fields
.field static v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v0, Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAcIssuerCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    const-string v2, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    sub-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {p1, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-object p1
.end method

.method public static createClientCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 8
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

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "Melbourne"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "Eric H. Echidna"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "feedback-crypto@bouncycastle.org"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->reset()V

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Lorg/bouncycastle/jce/X509Principal;

    const-string v4, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    invoke-direct {v3, v4}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object p0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-string v0, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/misc/NetscapeCertType;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/misc/NetscapeCertType;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    sget-object p0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {p0, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
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

    const-string v6, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    invoke-direct {v4, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v4, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v5, "92e08f83cc9920746989ca5034dcb384a094fb9c5a6288fcc4304424ab8f56388f72652d8fafc65a4b9020896f2cde297080f2a540e7b7ce5af0b3446e1258d1dd7f245cf54124b4c6e17da21b90a0ebd22605e6f45c9f136d7a13eaac1c0f7487de8bd6d924972408ebb58af71e76fd7b012a8d0e165f3ae2e5077a8648e619"

    invoke-direct {v11, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v5, "f75e80839b9b9379f1cf1128f321639757dba514642c206bbbd99f9a4846208b3e93fbbe5e0527cc59b1d4b929d9555853004c7c8b30ee6a213c3d1bb7415d03"

    invoke-direct {v12, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    const-string v5, "b892d9ebdbfc37e397256dd8a5d3123534d1f03726284743ddc6be3a709edb696fc40c7d902ed804c6eee730eee3d5b20bf6bd8d87a296813c87d3b3cc9d7947"

    invoke-direct {v13, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v5, "1d1a2d3ca8e52068b3094d501c9a842fec37f54db16e9a67070a8b3f53cc03d4257ad252a1a640eadd603724d7bf3737914b544ae332eedf4f34436cac25ceb5"

    invoke-direct {v14, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v15, Ljava/math/BigInteger;

    const-string v5, "6c929e4e81672fef49d9c825163fec97c4b7ba7acb26c0824638ac22605d7201c94625770984f78a56e6e25904fe7db407099cad9b14588841b94f5ab498dded"

    invoke-direct {v15, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "dae7651ee69ad1d081ec5e7188ae126f6004ff39556bde90e0b870962fa7b926d070686d8244fe5a9aa709a95686a104614834b0ada4b10f53197a5cb4c97339"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object/from16 v16, v5

    invoke-direct/range {v8 .. v16}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v3, "BC"

    const-string v5, "RSA"

    invoke-static {v5, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v5, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v5, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    invoke-virtual {v5, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v2, v4}, Lorg/bouncycastle/x509/examples/AttrCertExample;->createAcIssuerCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/x509/examples/AttrCertExample;->createClientCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    new-instance v5, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;

    invoke-direct {v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;-><init>()V

    invoke-virtual {v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->reset()V

    new-instance v6, Lorg/bouncycastle/x509/AttributeCertificateHolder;

    invoke-direct {v6, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V

    new-instance v6, Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0xc350

    sub-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    const-string v6, "SHA1WithRSAEncryption"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v7, 0x1

    const-string v8, "DAU123456789"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v6, Lorg/bouncycastle/x509/X509Attribute;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    const-string v7, "2.5.24.72"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/x509/X509Attribute;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->addAttribute(Lorg/bouncycastle/x509/X509Attribute;)V

    invoke-virtual {v5, v4, v3}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    const-string v6, " entity names found"

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v5}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " issuer names found, serial number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Matches original client x509 cert"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Matches original ca x509 cert"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "valid not before: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    :try_start_1
    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getAttributes()[Lorg/bouncycastle/x509/X509Attribute;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    aget-object v2, v0, v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "rolesyntax read from cert!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method
