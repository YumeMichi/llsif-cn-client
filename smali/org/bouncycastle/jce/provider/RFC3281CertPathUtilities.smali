.class Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;
.super Ljava/lang/Object;


# static fields
.field private static final AUTHORITY_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field private static final NO_REV_AVAIL:Ljava/lang/String;

.field private static final TARGET_INFORMATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static additionalChecks(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getProhibitedACAttributes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "."

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/bouncycastle/x509/X509Attribute;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attribute certificate contains prohibited attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getNecessaryACAttributes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/bouncycastle/x509/X509Attribute;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute certificate does not contain necessary attribute: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private static checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v13, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v13, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_8

    invoke-static {v1, v8, v13, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, v16

    const/16 v17, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v7, 0xb

    if-ne v2, v7, :cond_6

    invoke-virtual/range {p6 .. p6}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/security/cert/X509CRL;

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v5

    invoke-virtual {v5, v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object v2, v6

    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object v15, v6

    move-object/from16 v6, p2

    move-object/from16 v18, v14

    const/16 v14, 0xb

    move-object/from16 v7, p7

    :try_start_1
    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v15, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v13, v9, v15}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object/from16 v2, v16

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v3, v5, v20

    if-ltz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL for current time found."

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-static {v1, v8, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v1, v8, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v2, v15, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    invoke-static {v10, v2, v8, v11, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    invoke-static {v10, v15, v8, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    invoke-virtual {v11, v14}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :cond_5
    move-object/from16 v2, v19

    invoke-virtual {v12, v2}, Lorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)V
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v14, v18

    const/16 v17, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v14

    :goto_3
    const/4 v4, 0x1

    :goto_4
    move-object/from16 v14, v18

    goto/16 :goto_0

    :cond_6
    if-eqz v17, :cond_7

    return-void

    :cond_7
    throw v0

    :cond_8
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "Validation time is in future."

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method protected static checkCRLs(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    invoke-interface {v9, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_7

    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-static {v9, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v10, p1

    :try_start_1
    invoke-static {v0, v10}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_5

    new-instance v11, Lorg/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v11}, Lorg/bouncycastle/jce/provider/CertStatus;-><init>()V

    new-instance v12, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    const-string v13, "No valid CRL for distribution point found."

    const/16 v8, 0xb

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_0
    :try_start_3
    array-length v1, v0

    if-ge v6, v1, :cond_0

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v8, :cond_0

    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    aget-object v1, v0, v6
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v17, v6

    move-object v6, v11

    const/4 v14, 0x0

    move-object v7, v12

    const/16 v15, 0xb

    move-object/from16 v8, p4

    :try_start_4
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v6, v17, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xb

    const/16 v16, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    const/16 v15, 0xb

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v14, 0x0

    const/16 v15, 0xb

    :goto_1
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v13, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 v14, 0x0

    const/16 v15, 0xb

    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v15, :cond_2

    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_5
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v2

    aget-object v2, v2, v14

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    new-instance v2, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v3, v14, v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1, v1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V

    const/16 v16, 0x1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v13, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_2
    :goto_4
    if-eqz v16, :cond_6

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_5

    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_3

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_3

    invoke-virtual {v11, v1}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :cond_3
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v1, :cond_4

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate status could not be determined."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute certificate revocation after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "No valid CRL found."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v0, v2, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "CRL distribution point extension could not be read."

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v9, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    invoke-interface {v9, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "No rev avail extension is set, but also an AC revocation pointer."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    return-void
.end method

.method protected static processAttrCert1(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPath;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const-string v0, "Support class could not be created."

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v2

    const-string v3, "Unable to encode X500 principal."

    const-string v4, "Public key certificate for attribute certificate cannot be searched."

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    new-instance v2, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/bouncycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_1

    :try_start_0
    aget-object v8, v6, v7

    instance-of v8, v8, Ljavax/security/auth/x500/X500Principal;

    if-eqz v8, :cond_0

    aget-object v8, v6, v7

    check-cast v8, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/bouncycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v3, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v4, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Public key certificate specified in base certificate ID for attribute certificate cannot be found."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object p0

    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_5

    :try_start_1
    aget-object v6, p0, v5

    instance-of v6, v6, Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_4

    aget-object v6, p0, v5

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/bouncycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v3, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v4, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Public key certificate specified in entity name for attribute certificate cannot be found."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    invoke-static {p1}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v3}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v3}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lorg/bouncycastle/util/Selector;)V

    :try_start_2
    const-string v3, "PKIX"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    invoke-static {p0}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v2
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_5
    move-exception v1

    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Certification path for public key certificate of attribute certificate could not be build."

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_4

    :catch_6
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_7
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    if-nez v1, :cond_9

    invoke-interface {v2}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    :cond_9
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method protected static processAttrCert2(Ljava/security/cert/CertPath;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const-string v0, "Support class could not be created."

    :try_start_0
    const-string v1, "PKIX"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v0, "Certification path for issuer certificate of attribute certificate could not be validated."

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static processAttrCert3(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p1

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p1

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate issuer public key cannot be used to validate digital signatures."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate issuer is also a public key certificate issuer."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static processAttrCert4(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getTrustedACIssuers()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    const-string v3, "RFC2253"

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate issuer is not directly trusted."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method protected static processAttrCert5(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const-string v0, "Attribute certificate is not valid."

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static processAttrCert7(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const-string v0, "Target information extension could not be read."

    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getAttrCertCheckers()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/bouncycastle/x509/PKIXAttrCertChecker;->check(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attribute certificate contains unsupported critical extensions: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method