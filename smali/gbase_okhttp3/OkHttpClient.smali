.class public Lgbase_okhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lgbase_okhttp3/Call$Factory;
.implements Lgbase_okhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lgbase_okhttp3/Authenticator;

.field final cache:Lgbase_okhttp3/Cache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final certificatePinner:Lgbase_okhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lgbase_okhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lgbase_okhttp3/CookieJar;

.field final dispatcher:Lgbase_okhttp3/Dispatcher;

.field final dns:Lgbase_okhttp3/Dns;

.field final eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lgbase_okhttp3/internal/cache/InternalCache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final pingInterval:I

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

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 130
    new-array v1, v0, [Lgbase_okhttp3/Protocol;

    sget-object v2, Lgbase_okhttp3/Protocol;->HTTP_2:Lgbase_okhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lgbase_okhttp3/Protocol;->HTTP_1_1:Lgbase_okhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lgbase_okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 133
    new-array v0, v0, [Lgbase_okhttp3/ConnectionSpec;

    sget-object v1, Lgbase_okhttp3/ConnectionSpec;->MODERN_TLS:Lgbase_okhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lgbase_okhttp3/ConnectionSpec;->CLEARTEXT:Lgbase_okhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 137
    new-instance v0, Lgbase_okhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lgbase_okhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 230
    new-instance v0, Lgbase_okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lgbase_okhttp3/OkHttpClient;-><init>(Lgbase_okhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/OkHttpClient$Builder;)V
    .locals 4

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->dispatcher:Lgbase_okhttp3/Dispatcher;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->dispatcher:Lgbase_okhttp3/Dispatcher;

    .line 235
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 236
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 237
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 238
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 239
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 240
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    .line 241
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 242
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->cookieJar:Lgbase_okhttp3/CookieJar;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->cookieJar:Lgbase_okhttp3/CookieJar;

    .line 243
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->cache:Lgbase_okhttp3/Cache;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->cache:Lgbase_okhttp3/Cache;

    .line 244
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    .line 245
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 248
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbase_okhttp3/ConnectionSpec;

    if-nez v2, :cond_1

    .line 249
    invoke-virtual {v3}, Lgbase_okhttp3/ConnectionSpec;->isTls()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 256
    :cond_3
    invoke-direct {p0}, Lgbase_okhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Lgbase_okhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lgbase_okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 258
    invoke-static {v0}, Lgbase_okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2

    .line 253
    :cond_4
    :goto_1
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 254
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    .line 261
    :goto_2
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 262
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    iget-object v1, p0, Lgbase_okhttp3/OkHttpClient;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lgbase_okhttp3/CertificatePinner;->withCertificateChainCleaner(Lgbase_okhttp3/internal/tls/CertificateChainCleaner;)Lgbase_okhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    .line 264
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    .line 265
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->authenticator:Lgbase_okhttp3/Authenticator;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->authenticator:Lgbase_okhttp3/Authenticator;

    .line 266
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    .line 267
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->dns:Lgbase_okhttp3/Dns;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient;->dns:Lgbase_okhttp3/Dns;

    .line 268
    iget-boolean v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient;->followSslRedirects:Z

    .line 269
    iget-boolean v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient;->followRedirects:Z

    .line 270
    iget-boolean v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 271
    iget v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lgbase_okhttp3/OkHttpClient;->connectTimeout:I

    .line 272
    iget v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lgbase_okhttp3/OkHttpClient;->readTimeout:I

    .line 273
    iget v0, p1, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lgbase_okhttp3/OkHttpClient;->writeTimeout:I

    .line 274
    iget p1, p1, Lgbase_okhttp3/OkHttpClient$Builder;->pingInterval:I

    iput p1, p0, Lgbase_okhttp3/OkHttpClient;->pingInterval:I

    return-void
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    .line 295
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    .line 296
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 297
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 299
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 280
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 282
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 283
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 287
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public authenticator()Lgbase_okhttp3/Authenticator;
    .locals 1

    .line 364
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->authenticator:Lgbase_okhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lgbase_okhttp3/Cache;
    .locals 1

    .line 336
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->cache:Lgbase_okhttp3/Cache;

    return-object v0
.end method

.method public certificatePinner()Lgbase_okhttp3/CertificatePinner;
    .locals 1

    .line 360
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 305
    iget v0, p0, Lgbase_okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lgbase_okhttp3/ConnectionPool;
    .locals 1

    .line 372
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->connectionPool:Lgbase_okhttp3/ConnectionPool;

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

    .line 396
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lgbase_okhttp3/CookieJar;
    .locals 1

    .line 332
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->cookieJar:Lgbase_okhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lgbase_okhttp3/Dispatcher;
    .locals 1

    .line 388
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->dispatcher:Lgbase_okhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lgbase_okhttp3/Dns;
    .locals 1

    .line 344
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->dns:Lgbase_okhttp3/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lgbase_okhttp3/EventListener$Factory;
    .locals 1

    .line 418
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lgbase_okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lgbase_okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 356
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lgbase_okhttp3/internal/cache/InternalCache;
    .locals 1

    .line 340
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->cache:Lgbase_okhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgbase_okhttp3/Cache;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    .line 438
    new-instance v0, Lgbase_okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lgbase_okhttp3/OkHttpClient$Builder;-><init>(Lgbase_okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-static {p0, p1, v0}, Lgbase_okhttp3/RealCall;->newRealCall(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;Z)Lgbase_okhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocket(Lgbase_okhttp3/Request;Lgbase_okhttp3/WebSocketListener;)Lgbase_okhttp3/WebSocket;
    .locals 2

    .line 432
    new-instance v0, Lgbase_okhttp3/internal/ws/RealWebSocket;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lgbase_okhttp3/internal/ws/RealWebSocket;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/WebSocketListener;Ljava/util/Random;)V

    .line 433
    invoke-virtual {v0, p0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->connect(Lgbase_okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 1

    .line 320
    iget v0, p0, Lgbase_okhttp3/OkHttpClient;->pingInterval:I

    return v0
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

    .line 392
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .line 324
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lgbase_okhttp3/Authenticator;
    .locals 1

    .line 368
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 328
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 310
    iget v0, p0, Lgbase_okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lgbase_okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 348
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 352
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 315
    iget v0, p0, Lgbase_okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
