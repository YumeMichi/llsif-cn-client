.class public Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SimpleSSLSocketFactory.java"


# static fields
.field private static instance:Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;

.field private static trustStore:Ljava/security/KeyStore;


# instance fields
.field private sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->trustStore:Ljava/security/KeyStore;

    .line 22
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->trustStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->trustStore:Ljava/security/KeyStore;

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const-string v0, "TLS"

    .line 15
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 48
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory$1;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;)V

    .line 65
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 67
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public static getSocketFactory()Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;
    .locals 2

    .line 31
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->instance:Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;

    if-nez v0, :cond_0

    .line 33
    :try_start_0
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->instance:Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_0
    :goto_0
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->instance:Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/SimpleSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
