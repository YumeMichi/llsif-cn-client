.class public final Lgbase_okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/OkHttpClient$Builder$TrustAllCerts;
    }
.end annotation


# instance fields
.field authenticator:Lgbase_okhttp3/Authenticator;

.field cache:Lgbase_okhttp3/Cache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Lgbase_okhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lgbase_okhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lgbase_okhttp3/CookieJar;

.field dispatcher:Lgbase_okhttp3/Dispatcher;

.field dns:Lgbase_okhttp3/Dns;

.field eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lgbase_okhttp3/internal/cache/InternalCache;
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

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Lgbase_okhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 471
    new-instance v0, Lgbase_okhttp3/Dispatcher;

    invoke-direct {v0}, Lgbase_okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->dispatcher:Lgbase_okhttp3/Dispatcher;

    .line 472
    sget-object v0, Lgbase_okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 473
    sget-object v0, Lgbase_okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 474
    sget-object v0, Lgbase_okhttp3/EventListener;->NONE:Lgbase_okhttp3/EventListener;

    invoke-static {v0}, Lgbase_okhttp3/EventListener;->factory(Lgbase_okhttp3/EventListener;)Lgbase_okhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    .line 475
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 476
    sget-object v0, Lgbase_okhttp3/CookieJar;->NO_COOKIES:Lgbase_okhttp3/CookieJar;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->cookieJar:Lgbase_okhttp3/CookieJar;

    .line 477
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 478
    sget-object v0, Lgbase_okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lgbase_okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 479
    sget-object v0, Lgbase_okhttp3/CertificatePinner;->DEFAULT:Lgbase_okhttp3/CertificatePinner;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    .line 480
    sget-object v0, Lgbase_okhttp3/Authenticator;->NONE:Lgbase_okhttp3/Authenticator;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    .line 481
    sget-object v0, Lgbase_okhttp3/Authenticator;->NONE:Lgbase_okhttp3/Authenticator;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->authenticator:Lgbase_okhttp3/Authenticator;

    .line 482
    new-instance v0, Lgbase_okhttp3/ConnectionPool;

    invoke-direct {v0}, Lgbase_okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    .line 483
    sget-object v0, Lgbase_okhttp3/Dns;->SYSTEM:Lgbase_okhttp3/Dns;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->dns:Lgbase_okhttp3/Dns;

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 485
    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 486
    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    const/16 v0, 0x2710

    .line 487
    iput v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 488
    iput v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 489
    iput v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout:I

    const/4 v0, 0x0

    .line 490
    iput v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 491
    invoke-static {}, Lgbase_okhttp3/OkHttpClient$Builder;->createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbase_okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lgbase_okhttp3/OkHttpClient$Builder;

    .line 492
    new-instance v0, Lgbase_okhttp3/OkHttpClient$Builder$1;

    invoke-direct {v0, p0}, Lgbase_okhttp3/OkHttpClient$Builder$1;-><init>(Lgbase_okhttp3/OkHttpClient$Builder;)V

    invoke-virtual {p0, v0}, Lgbase_okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lgbase_okhttp3/OkHttpClient$Builder;

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/OkHttpClient;)V
    .locals 2

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 501
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->dispatcher:Lgbase_okhttp3/Dispatcher;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->dispatcher:Lgbase_okhttp3/Dispatcher;

    .line 502
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 503
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 504
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 505
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lgbase_okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lgbase_okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    .line 508
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 509
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->cookieJar:Lgbase_okhttp3/CookieJar;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->cookieJar:Lgbase_okhttp3/CookieJar;

    .line 510
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    .line 511
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->cache:Lgbase_okhttp3/Cache;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->cache:Lgbase_okhttp3/Cache;

    .line 512
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 513
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 514
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    .line 515
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 516
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    .line 517
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    .line 518
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->authenticator:Lgbase_okhttp3/Authenticator;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->authenticator:Lgbase_okhttp3/Authenticator;

    .line 519
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    .line 520
    iget-object v0, p1, Lgbase_okhttp3/OkHttpClient;->dns:Lgbase_okhttp3/Dns;

    iput-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->dns:Lgbase_okhttp3/Dns;

    .line 521
    iget-boolean v0, p1, Lgbase_okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 522
    iget-boolean v0, p1, Lgbase_okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 523
    iget-boolean v0, p1, Lgbase_okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 524
    iget v0, p1, Lgbase_okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 525
    iget v0, p1, Lgbase_okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 526
    iget v0, p1, Lgbase_okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 527
    iget p1, p1, Lgbase_okhttp3/OkHttpClient;->pingInterval:I

    iput p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method private static createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    .line 635
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    .line 636
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lgbase_okhttp3/OkHttpClient$Builder$TrustAllCerts;

    invoke-direct {v4}, Lgbase_okhttp3/OkHttpClient$Builder$TrustAllCerts;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 638
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public addInterceptor(Lgbase_okhttp3/Interceptor;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    .line 903
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNetworkInterceptor(Lgbase_okhttp3/Interceptor;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    .line 917
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public authenticator(Lgbase_okhttp3/Authenticator;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 762
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->authenticator:Lgbase_okhttp3/Authenticator;

    return-object p0

    .line 761
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lgbase_okhttp3/OkHttpClient;
    .locals 1

    .line 936
    new-instance v0, Lgbase_okhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lgbase_okhttp3/OkHttpClient;-><init>(Lgbase_okhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lgbase_okhttp3/Cache;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Lgbase_okhttp3/Cache;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 614
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->cache:Lgbase_okhttp3/Cache;

    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    return-object p0
.end method

.method public certificatePinner(Lgbase_okhttp3/CertificatePinner;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 750
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->certificatePinner:Lgbase_okhttp3/CertificatePinner;

    return-object p0

    .line 749
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificatePinner == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 536
    invoke-static {v0, p1, p2, p3}, Lgbase_okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-object p0
.end method

.method public connectionPool(Lgbase_okhttp3/ConnectionPool;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 785
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    return-object p0

    .line 784
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connectionPool == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectionSpecs(Ljava/util/List;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbase_okhttp3/ConnectionSpec;",
            ">;)",
            "Lgbase_okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 889
    invoke-static {p1}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public cookieJar(Lgbase_okhttp3/CookieJar;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 602
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->cookieJar:Lgbase_okhttp3/CookieJar;

    return-object p0

    .line 601
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cookieJar == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatcher(Lgbase_okhttp3/Dispatcher;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 834
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->dispatcher:Lgbase_okhttp3/Dispatcher;

    return-object p0

    .line 833
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dns(Lgbase_okhttp3/Dns;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 626
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->dns:Lgbase_okhttp3/Dns;

    return-object p0

    .line 625
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dns == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eventListener(Lgbase_okhttp3/EventListener;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 923
    invoke-static {p1}, Lgbase_okhttp3/EventListener;->factory(Lgbase_okhttp3/EventListener;)Lgbase_okhttp3/EventListener$Factory;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    return-object p0

    .line 922
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eventListenerFactory(Lgbase_okhttp3/EventListener$Factory;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 931
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lgbase_okhttp3/EventListener$Factory;

    return-object p0

    .line 929
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListenerFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public followRedirects(Z)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 802
    iput-boolean p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->followRedirects:Z

    return-object p0
.end method

.method public followSslRedirects(Z)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 796
    iput-boolean p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 739
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    .line 738
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "hostnameVerifier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 899
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

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

    .line 913
    iget-object v0, p0, Lgbase_okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "interval"

    .line 567
    invoke-static {v0, p1, p2, p3}, Lgbase_okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-object p0
.end method

.method public protocols(Ljava/util/List;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbase_okhttp3/Protocol;",
            ">;)",
            "Lgbase_okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 870
    sget-object p1, Lgbase_okhttp3/Protocol;->HTTP_1_1:Lgbase_okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 873
    sget-object p1, Lgbase_okhttp3/Protocol;->HTTP_1_0:Lgbase_okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 876
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 881
    sget-object p1, Lgbase_okhttp3/Protocol;->SPDY_3:Lgbase_okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 884
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-object p0

    .line 877
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 874
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 871
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public proxy(Ljava/net/Proxy;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 577
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxyAuthenticator(Lgbase_okhttp3/Authenticator;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 774
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lgbase_okhttp3/Authenticator;

    return-object p0

    .line 773
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxyAuthenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 590
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 545
    invoke-static {v0, p1, p2, p3}, Lgbase_okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout:I

    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 825
    iput-boolean p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return-object p0
.end method

.method setInternalCache(Lgbase_okhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1    # Lgbase_okhttp3/internal/cache/InternalCache;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 608
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->internalCache:Lgbase_okhttp3/internal/cache/InternalCache;

    const/4 p1, 0x0

    .line 609
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->cache:Lgbase_okhttp3/Cache;

    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 667
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0

    .line 666
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "socketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 3

    if-eqz p1, :cond_1

    .line 682
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbase_okhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 688
    invoke-static {v0}, Lgbase_okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to extract the trust manager on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 726
    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 727
    invoke-static {p2}, Lgbase_okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lgbase_okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    .line 725
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "trustManager == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 724
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sslSocketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 554
    invoke-static {v0, p1, p2, p3}, Lgbase_okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-object p0
.end method
