.class public interface abstract Lorg/bouncycastle/asn1/esf/ESFAttributes;
.super Ljava/lang/Object;


# static fields
.field public static final archiveTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final certCRLTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final certValues:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final certificateRefs:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final commitmentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final contentTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final escTimeStamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final otherSigCert:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final revocationRefs:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final revocationValues:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final sigPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signerAttr:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signerLocation:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_sigPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->sigPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_commitmentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->commitmentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_signerLocation:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->signerLocation:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_signerAttr:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->signerAttr:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_otherSigCert:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->otherSigCert:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_contentTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->contentTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_certificateRefs:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->certificateRefs:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_revocationRefs:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->revocationRefs:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_certValues:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->certValues:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_revocationValues:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->revocationValues:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_escTimeStamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->escTimeStamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_certCRLTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->certCRLTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_archiveTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->archiveTimestamp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
