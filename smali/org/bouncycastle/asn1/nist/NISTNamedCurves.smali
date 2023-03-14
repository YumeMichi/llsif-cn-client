.class public Lorg/bouncycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;


# static fields
.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "B-571"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "B-409"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "B-283"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "B-233"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "B-163"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getByOID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object p0
.end method
