.class public final Lgbase_okhttp3/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lgbase_okhttp3/CertificatePinner;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lgbase_okhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lgbase_okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final url:Lgbase_okhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILgbase_okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lgbase_okhttp3/CertificatePinner;Lgbase_okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lgbase_okhttp3/CertificatePinner;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lgbase_okhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lgbase_okhttp3/CertificatePinner;",
            "Lgbase_okhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lgbase_okhttp3/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lgbase_okhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lgbase_okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Lgbase_okhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lgbase_okhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lgbase_okhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lgbase_okhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Lgbase_okhttp3/HttpUrl$Builder;->port(I)Lgbase_okhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl$Builder;->build()Lgbase_okhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/Address;->url:Lgbase_okhttp3/HttpUrl;

    if-eqz p3, :cond_6

    .line 64
    iput-object p3, p0, Lgbase_okhttp3/Address;->dns:Lgbase_okhttp3/Dns;

    if-eqz p4, :cond_5

    .line 67
    iput-object p4, p0, Lgbase_okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    .line 72
    iput-object p8, p0, Lgbase_okhttp3/Address;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    if-eqz p10, :cond_3

    .line 75
    invoke-static {p10}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/Address;->protocols:Ljava/util/List;

    if-eqz p11, :cond_2

    .line 78
    invoke-static {p11}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/Address;->connectionSpecs:Ljava/util/List;

    if-eqz p12, :cond_1

    .line 81
    iput-object p12, p0, Lgbase_okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 83
    iput-object p9, p0, Lgbase_okhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 84
    iput-object p5, p0, Lgbase_okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 85
    iput-object p6, p0, Lgbase_okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 86
    iput-object p7, p0, Lgbase_okhttp3/Address;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    return-void

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public certificatePinner()Lgbase_okhttp3/CertificatePinner;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lgbase_okhttp3/Address;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lgbase_okhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lgbase_okhttp3/Dns;
    .locals 1

    .line 99
    iget-object v0, p0, Lgbase_okhttp3/Address;->dns:Lgbase_okhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 156
    instance-of v0, p1, Lgbase_okhttp3/Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->url:Lgbase_okhttp3/HttpUrl;

    check-cast p1, Lgbase_okhttp3/Address;

    iget-object v1, p1, Lgbase_okhttp3/Address;->url:Lgbase_okhttp3/HttpUrl;

    .line 157
    invoke-virtual {v0, v1}, Lgbase_okhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lgbase_okhttp3/Address;->equalsNonHost(Lgbase_okhttp3/Address;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method equalsNonHost(Lgbase_okhttp3/Address;)Z
    .locals 2

    .line 177
    iget-object v0, p0, Lgbase_okhttp3/Address;->dns:Lgbase_okhttp3/Dns;

    iget-object v1, p1, Lgbase_okhttp3/Address;->dns:Lgbase_okhttp3/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    iget-object v1, p1, Lgbase_okhttp3/Address;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lgbase_okhttp3/Address;->protocols:Ljava/util/List;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lgbase_okhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lgbase_okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lgbase_okhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 182
    invoke-static {v0, v1}, Lgbase_okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lgbase_okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 183
    invoke-static {v0, v1}, Lgbase_okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lgbase_okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 184
    invoke-static {v0, v1}, Lgbase_okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Address;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    iget-object v1, p1, Lgbase_okhttp3/Address;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    .line 185
    invoke-static {v0, v1}, Lgbase_okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 163
    iget-object v0, p0, Lgbase_okhttp3/Address;->url:Lgbase_okhttp3/HttpUrl;

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 164
    iget-object v0, p0, Lgbase_okhttp3/Address;->dns:Lgbase_okhttp3/Dns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 165
    iget-object v0, p0, Lgbase_okhttp3/Address;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 166
    iget-object v0, p0, Lgbase_okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 167
    iget-object v0, p0, Lgbase_okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 168
    iget-object v0, p0, Lgbase_okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    iget-object v0, p0, Lgbase_okhttp3/Address;->proxy:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget-object v0, p0, Lgbase_okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget-object v0, p0, Lgbase_okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget-object v0, p0, Lgbase_okhttp3/Address;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lgbase_okhttp3/CertificatePinner;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 147
    iget-object v0, p0, Lgbase_okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lgbase_okhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Lgbase_okhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lgbase_okhttp3/Authenticator;
    .locals 1

    .line 109
    iget-object v0, p0, Lgbase_okhttp3/Address;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 129
    iget-object v0, p0, Lgbase_okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 104
    iget-object v0, p0, Lgbase_okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 142
    iget-object v0, p0, Lgbase_okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/Address;->url:Lgbase_okhttp3/HttpUrl;

    .line 192
    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/Address;->url:Lgbase_okhttp3/HttpUrl;

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lgbase_okhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Lgbase_okhttp3/HttpUrl;
    .locals 1

    .line 94
    iget-object v0, p0, Lgbase_okhttp3/Address;->url:Lgbase_okhttp3/HttpUrl;

    return-object v0
.end method
