.class public final Lgbase_okhttp3/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final cipherSuite:Lgbase_okhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lgbase_okhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Lgbase_okhttp3/TlsVersion;Lgbase_okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbase_okhttp3/TlsVersion;",
            "Lgbase_okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lgbase_okhttp3/Handshake;->tlsVersion:Lgbase_okhttp3/TlsVersion;

    .line 45
    iput-object p2, p0, Lgbase_okhttp3/Handshake;->cipherSuite:Lgbase_okhttp3/CipherSuite;

    .line 46
    iput-object p3, p0, Lgbase_okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lgbase_okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-void
.end method

.method public static get(Lgbase_okhttp3/TlsVersion;Lgbase_okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lgbase_okhttp3/Handshake;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbase_okhttp3/TlsVersion;",
            "Lgbase_okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lgbase_okhttp3/Handshake;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 81
    new-instance v0, Lgbase_okhttp3/Handshake;

    invoke-static {p2}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 82
    invoke-static {p3}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lgbase_okhttp3/Handshake;-><init>(Lgbase_okhttp3/TlsVersion;Lgbase_okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "cipherSuite == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tlsVersion == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lgbase_okhttp3/Handshake;
    .locals 4

    .line 51
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    invoke-static {v0}, Lgbase_okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lgbase_okhttp3/CipherSuite;

    move-result-object v0

    .line 55
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 57
    invoke-static {v1}, Lgbase_okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lgbase_okhttp3/TlsVersion;

    move-result-object v1

    .line 61
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 66
    invoke-static {v2}, Lgbase_okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 67
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 69
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 71
    invoke-static {p0}, Lgbase_okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 72
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 74
    :goto_2
    new-instance v3, Lgbase_okhttp3/Handshake;

    invoke-direct {v3, v1, v0, v2, p0}, Lgbase_okhttp3/Handshake;-><init>(Lgbase_okhttp3/TlsVersion;Lgbase_okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cipherSuite()Lgbase_okhttp3/CipherSuite;
    .locals 1

    .line 95
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->cipherSuite:Lgbase_okhttp3/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    instance-of v0, p1, Lgbase_okhttp3/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    check-cast p1, Lgbase_okhttp3/Handshake;

    .line 125
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->tlsVersion:Lgbase_okhttp3/TlsVersion;

    iget-object v2, p1, Lgbase_okhttp3/Handshake;->tlsVersion:Lgbase_okhttp3/TlsVersion;

    invoke-virtual {v0, v2}, Lgbase_okhttp3/TlsVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbase_okhttp3/Handshake;->cipherSuite:Lgbase_okhttp3/CipherSuite;

    iget-object v2, p1, Lgbase_okhttp3/Handshake;->cipherSuite:Lgbase_okhttp3/CipherSuite;

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbase_okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v2, p1, Lgbase_okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbase_okhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object p1, p1, Lgbase_okhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 133
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->tlsVersion:Lgbase_okhttp3/TlsVersion;

    invoke-virtual {v0}, Lgbase_okhttp3/TlsVersion;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 134
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->cipherSuite:Lgbase_okhttp3/CipherSuite;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 135
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 136
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public localCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 117
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public peerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public tlsVersion()Lgbase_okhttp3/TlsVersion;
    .locals 1

    .line 90
    iget-object v0, p0, Lgbase_okhttp3/Handshake;->tlsVersion:Lgbase_okhttp3/TlsVersion;

    return-object v0
.end method
