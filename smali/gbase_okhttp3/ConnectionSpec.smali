.class public final Lgbase_okhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lgbase_okhttp3/CipherSuite;

.field public static final CLEARTEXT:Lgbase_okhttp3/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lgbase_okhttp3/ConnectionSpec;

.field public static final MODERN_TLS:Lgbase_okhttp3/ConnectionSpec;


# instance fields
.field final cipherSuites:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final supportsTlsExtensions:Z

.field final tls:Z

.field final tlsVersions:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xf

    .line 47
    new-array v0, v0, [Lgbase_okhttp3/CipherSuite;

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lgbase_okhttp3/CipherSuite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lgbase_okhttp3/CipherSuite;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lgbase_okhttp3/CipherSuite;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lgbase_okhttp3/CipherSuite;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lgbase_okhttp3/CipherSuite;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lgbase_okhttp3/CipherSuite;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lgbase_okhttp3/CipherSuite;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lgbase_okhttp3/CipherSuite;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lgbase_okhttp3/CipherSuite;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lgbase_okhttp3/CipherSuite;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lgbase_okhttp3/CipherSuite;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lgbase_okhttp3/CipherSuite;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lgbase_okhttp3/CipherSuite;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lgbase_okhttp3/CipherSuite;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lgbase_okhttp3/CipherSuite;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    sput-object v0, Lgbase_okhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lgbase_okhttp3/CipherSuite;

    .line 70
    new-instance v0, Lgbase_okhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lgbase_okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lgbase_okhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lgbase_okhttp3/CipherSuite;

    .line 71
    invoke-virtual {v0, v1}, Lgbase_okhttp3/ConnectionSpec$Builder;->cipherSuites([Lgbase_okhttp3/CipherSuite;)Lgbase_okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lgbase_okhttp3/TlsVersion;

    sget-object v6, Lgbase_okhttp3/TlsVersion;->TLS_1_3:Lgbase_okhttp3/TlsVersion;

    aput-object v6, v1, v2

    sget-object v6, Lgbase_okhttp3/TlsVersion;->TLS_1_2:Lgbase_okhttp3/TlsVersion;

    aput-object v6, v1, v3

    sget-object v6, Lgbase_okhttp3/TlsVersion;->TLS_1_1:Lgbase_okhttp3/TlsVersion;

    aput-object v6, v1, v4

    sget-object v4, Lgbase_okhttp3/TlsVersion;->TLS_1_0:Lgbase_okhttp3/TlsVersion;

    aput-object v4, v1, v5

    .line 72
    invoke-virtual {v0, v1}, Lgbase_okhttp3/ConnectionSpec$Builder;->tlsVersions([Lgbase_okhttp3/TlsVersion;)Lgbase_okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3}, Lgbase_okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lgbase_okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lgbase_okhttp3/ConnectionSpec$Builder;->build()Lgbase_okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/ConnectionSpec;->MODERN_TLS:Lgbase_okhttp3/ConnectionSpec;

    .line 77
    new-instance v0, Lgbase_okhttp3/ConnectionSpec$Builder;

    sget-object v1, Lgbase_okhttp3/ConnectionSpec;->MODERN_TLS:Lgbase_okhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lgbase_okhttp3/ConnectionSpec$Builder;-><init>(Lgbase_okhttp3/ConnectionSpec;)V

    new-array v1, v3, [Lgbase_okhttp3/TlsVersion;

    sget-object v4, Lgbase_okhttp3/TlsVersion;->TLS_1_0:Lgbase_okhttp3/TlsVersion;

    aput-object v4, v1, v2

    .line 78
    invoke-virtual {v0, v1}, Lgbase_okhttp3/ConnectionSpec$Builder;->tlsVersions([Lgbase_okhttp3/TlsVersion;)Lgbase_okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v3}, Lgbase_okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lgbase_okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lgbase_okhttp3/ConnectionSpec$Builder;->build()Lgbase_okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lgbase_okhttp3/ConnectionSpec;

    .line 83
    new-instance v0, Lgbase_okhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v2}, Lgbase_okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lgbase_okhttp3/ConnectionSpec$Builder;->build()Lgbase_okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/ConnectionSpec;->CLEARTEXT:Lgbase_okhttp3/ConnectionSpec;

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/ConnectionSpec$Builder;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-boolean v0, p1, Lgbase_okhttp3/ConnectionSpec$Builder;->tls:Z

    iput-boolean v0, p0, Lgbase_okhttp3/ConnectionSpec;->tls:Z

    .line 92
    iget-object v0, p1, Lgbase_okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lgbase_okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 94
    iget-boolean p1, p1, Lgbase_okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iput-boolean p1, p0, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return-void
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lgbase_okhttp3/ConnectionSpec;
    .locals 4

    .line 138
    iget-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lgbase_okhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    .line 139
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgbase_okhttp3/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    iget-object v1, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lgbase_okhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 142
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lgbase_okhttp3/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object v2, Lgbase_okhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lgbase_okhttp3/internal/Util;->indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    .line 151
    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lgbase_okhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_2
    new-instance p1, Lgbase_okhttp3/ConnectionSpec$Builder;

    invoke-direct {p1, p0}, Lgbase_okhttp3/ConnectionSpec$Builder;-><init>(Lgbase_okhttp3/ConnectionSpec;)V

    .line 156
    invoke-virtual {p1, v0}, Lgbase_okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lgbase_okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1, v1}, Lgbase_okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lgbase_okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lgbase_okhttp3/ConnectionSpec$Builder;->build()Lgbase_okhttp3/ConnectionSpec;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    .line 123
    invoke-direct {p0, p1, p2}, Lgbase_okhttp3/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lgbase_okhttp3/ConnectionSpec;

    move-result-object p2

    .line 125
    iget-object v0, p2, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object p2, p2, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lgbase_okhttp3/CipherSuite;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 191
    instance-of v0, p1, Lgbase_okhttp3/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 194
    :cond_1
    check-cast p1, Lgbase_okhttp3/ConnectionSpec;

    .line 195
    iget-boolean v2, p0, Lgbase_okhttp3/ConnectionSpec;->tls:Z

    iget-boolean v3, p1, Lgbase_okhttp3/ConnectionSpec;->tls:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 198
    iget-object v2, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p1, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 199
    :cond_3
    iget-object v2, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v3, p1, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 200
    :cond_4
    iget-boolean v2, p0, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean p1, p1, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 208
    iget-boolean v0, p0, Lgbase_okhttp3/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 209
    iget-object v1, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 210
    iget-object v1, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 211
    iget-boolean v1, p0, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 173
    iget-boolean v0, p0, Lgbase_okhttp3/ConnectionSpec;->tls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 177
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lgbase_okhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    iget-object v2, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v0, v2, v3}, Lgbase_okhttp3/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 182
    :cond_1
    iget-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lgbase_okhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    iget-object v2, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {v0, v2, p1}, Lgbase_okhttp3/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isTls()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lgbase_okhttp3/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lgbase_okhttp3/TlsVersion;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 217
    iget-boolean v0, p0, Lgbase_okhttp3/ConnectionSpec;->tls:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgbase_okhttp3/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 222
    :goto_0
    iget-object v2, p0, Lgbase_okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lgbase_okhttp3/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
