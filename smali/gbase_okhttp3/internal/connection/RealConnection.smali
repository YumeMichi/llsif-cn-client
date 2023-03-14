.class public final Lgbase_okhttp3/internal/connection/RealConnection;
.super Lgbase_okhttp3/internal/http2/Http2Connection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lgbase_okhttp3/Connection;


# static fields
.field private static final MAX_TUNNEL_ATTEMPTS:I = 0x15

.field private static final NPE_THROW_WITH_NULL:Ljava/lang/String; = "throw with null exception"


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lgbase_okhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionPool:Lgbase_okhttp3/ConnectionPool;

.field private handshake:Lgbase_okhttp3/Handshake;

.field private http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lgbase_okhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lgbase_okhttp3/Route;

.field private sink:Lgbase_okio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lgbase_okio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Route;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    const/4 v0, 0x1

    .line 109
    iput v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 115
    iput-wide v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 118
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    .line 119
    iput-object p2, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    return-void
.end method

.method private connectSocket(IILgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    .line 232
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lgbase_okhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 236
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lgbase_okhttp3/EventListener;->connectStart(Lgbase_okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 237
    iget-object p3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 239
    :try_start_0
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object p2

    iget-object p3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object p4, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {p4}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lgbase_okhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :try_start_1
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lgbase_okio/Okio;->source(Ljava/net/Socket;)Lgbase_okio/Source;

    move-result-object p1

    invoke-static {p1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    .line 252
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lgbase_okio/Okio;->sink(Ljava/net/Socket;)Lgbase_okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 255
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 241
    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {p4}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 243
    throw p2
.end method

.method private connectTls(Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lgbase_okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 294
    :try_start_0
    iget-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 295
    invoke-virtual {v0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v5

    const/4 v6, 0x1

    .line 294
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    :try_start_1
    invoke-virtual {p1, v1}, Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lgbase_okhttp3/ConnectionSpec;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v3

    .line 301
    invoke-virtual {v0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v5

    .line 300
    invoke-virtual {v3, v1, v4, v5}, Lgbase_okhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 305
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 306
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lgbase_okhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lgbase_okhttp3/Handshake;

    move-result-object v3

    .line 309
    invoke-virtual {v0}, Lgbase_okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    invoke-virtual {v0}, Lgbase_okhttp3/Address;->certificatePinner()Lgbase_okhttp3/CertificatePinner;

    move-result-object v4

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v3}, Lgbase_okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v5

    .line 318
    invoke-virtual {v4, v0, v5}, Lgbase_okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 322
    invoke-virtual {p1}, Lgbase_okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 323
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Lgbase_okhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 325
    :cond_1
    iput-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 326
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lgbase_okio/Okio;->source(Ljava/net/Socket;)Lgbase_okio/Source;

    move-result-object p1

    invoke-static {p1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    .line 327
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lgbase_okio/Okio;->sink(Ljava/net/Socket;)Lgbase_okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    .line 328
    iput-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->handshake:Lgbase_okhttp3/Handshake;

    if-eqz v2, :cond_2

    .line 330
    invoke-static {v2}, Lgbase_okhttp3/Protocol;->get(Ljava/lang/String;)Lgbase_okhttp3/Protocol;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lgbase_okhttp3/Protocol;->HTTP_1_1:Lgbase_okhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 338
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Lgbase_okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_3
    return-void

    .line 310
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lgbase_okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 311
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p1}, Lgbase_okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-static {p1}, Lgbase_okhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    .line 334
    :goto_1
    :try_start_3
    invoke-static {p1}, Lgbase_okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 335
    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v1, :cond_6

    .line 338
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgbase_okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 341
    :cond_6
    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    throw p1
.end method

.method private connectTunnel(IIILgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lgbase_okhttp3/internal/connection/RealConnection;->createTunnelRequest()Lgbase_okhttp3/Request;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 211
    invoke-direct {p0, p1, p2, p4, p5}, Lgbase_okhttp3/internal/connection/RealConnection;->connectSocket(IILgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V

    .line 212
    invoke-direct {p0, p2, p3, v0, v1}, Lgbase_okhttp3/internal/connection/RealConnection;->createTunnel(IILgbase_okhttp3/Request;Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    iget-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 219
    iput-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 220
    iput-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    .line 221
    iput-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    .line 222
    iget-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v3}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    iget-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v3}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v4 .. v9}, Lgbase_okhttp3/EventListener;->connectEnd(Lgbase_okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lgbase_okhttp3/Protocol;Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private createTunnel(IILgbase_okhttp3/Request;Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lgbase_okhttp3/internal/Util;->hostHeader(Lgbase_okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 355
    :goto_0
    new-instance v0, Lgbase_okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    iget-object v2, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lgbase_okhttp3/internal/http1/Http1Codec;-><init>(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)V

    .line 356
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v1}, Lgbase_okio/BufferedSource;->timeout()Lgbase_okio/Timeout;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lgbase_okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okio/Timeout;

    .line 357
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v1}, Lgbase_okio/BufferedSink;->timeout()Lgbase_okio/Timeout;

    move-result-object v1

    int-to-long v4, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lgbase_okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okio/Timeout;

    .line 358
    invoke-virtual {p3}, Lgbase_okhttp3/Request;->headers()Lgbase_okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lgbase_okhttp3/internal/http1/Http1Codec;->writeRequest(Lgbase_okhttp3/Headers;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Lgbase_okhttp3/internal/http1/Http1Codec;->finishRequest()V

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Lgbase_okhttp3/internal/http1/Http1Codec;->readResponseHeaders(Z)Lgbase_okhttp3/Response$Builder;

    move-result-object v1

    .line 361
    invoke-virtual {v1, p3}, Lgbase_okhttp3/Response$Builder;->request(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response$Builder;

    move-result-object p3

    .line 362
    invoke-virtual {p3}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p3

    .line 365
    invoke-static {p3}, Lgbase_okhttp3/internal/http/HttpHeaders;->contentLength(Lgbase_okhttp3/Response;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    const-wide/16 v1, 0x0

    .line 369
    :cond_0
    invoke-virtual {v0, v1, v2}, Lgbase_okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lgbase_okio/Source;

    move-result-object v0

    const v1, 0x7fffffff

    .line 370
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lgbase_okhttp3/internal/Util;->skipAll(Lgbase_okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 371
    invoke-interface {v0}, Lgbase_okio/Source;->close()V

    .line 373
    invoke-virtual {p3}, Lgbase_okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 385
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->proxyAuthenticator()Lgbase_okhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-interface {v0, v1, p3}, Lgbase_okhttp3/Authenticator;->authenticate(Lgbase_okhttp3/Route;Lgbase_okhttp3/Response;)Lgbase_okhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    .line 388
    invoke-virtual {p3, v1}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto/16 :goto_0

    .line 386
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p3}, Lgbase_okhttp3/Response;->code()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_4
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    invoke-interface {p1}, Lgbase_okio/BufferedSource;->buffer()Lgbase_okio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p1}, Lgbase_okio/BufferedSink;->buffer()Lgbase_okio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 380
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private createTunnelRequest()Lgbase_okhttp3/Request;
    .locals 3

    .line 406
    new-instance v0, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    .line 407
    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Request$Builder;->url(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    .line 408
    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lgbase_okhttp3/internal/Util;->hostHeader(Lgbase_okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 409
    invoke-virtual {v0, v1, v2}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private establishProtocol(Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;Lgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    sget-object p1, Lgbase_okhttp3/Protocol;->HTTP_1_1:Lgbase_okhttp3/Protocol;

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;

    .line 264
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-void

    .line 268
    :cond_0
    invoke-virtual {p3, p2}, Lgbase_okhttp3/EventListener;->secureConnectStart(Lgbase_okhttp3/Call;)V

    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/connection/RealConnection;->connectTls(Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->handshake:Lgbase_okhttp3/Handshake;

    invoke-virtual {p3, p2, p1, v0}, Lgbase_okhttp3/EventListener;->secureConnectEnd(Lgbase_okhttp3/Call;Lgbase_okhttp3/Handshake;Ljava/lang/Throwable;)V

    .line 277
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;

    sget-object p2, Lgbase_okhttp3/Protocol;->HTTP_2:Lgbase_okhttp3/Protocol;

    if-ne p1, p2, :cond_1

    .line 278
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 279
    new-instance p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object p2, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object p3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    .line 280
    invoke-virtual {p3}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object p3

    invoke-virtual {p3}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object p3

    invoke-virtual {p3}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    invoke-virtual {p1, p2, p3, v0, v1}, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)Lgbase_okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    .line 281
    invoke-virtual {p1, p0}, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->listener(Lgbase_okhttp3/internal/http2/Http2Connection$Listener;)Lgbase_okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->build()Lgbase_okhttp3/internal/http2/Http2Connection;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    .line 283
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->start()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p3, p2, v0, p1}, Lgbase_okhttp3/EventListener;->secureConnectEnd(Lgbase_okhttp3/Call;Lgbase_okhttp3/Handshake;Ljava/lang/Throwable;)V

    .line 273
    throw p1
.end method

.method public static testConnection(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Route;Ljava/net/Socket;J)Lgbase_okhttp3/internal/connection/RealConnection;
    .locals 1

    .line 124
    new-instance v0, Lgbase_okhttp3/internal/connection/RealConnection;

    invoke-direct {v0, p0, p1}, Lgbase_okhttp3/internal/connection/RealConnection;-><init>(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Route;)V

    .line 125
    iput-object p2, v0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 126
    iput-wide p3, v0, Lgbase_okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 500
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public connect(IIIZLgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 132
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;

    if-nez v0, :cond_a

    .line 135
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    .line 136
    new-instance v10, Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v10, v0}, Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 138
    iget-object v1, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 139
    sget-object v1, Lgbase_okhttp3/ConnectionSpec;->CLEARTEXT:Lgbase_okhttp3/ConnectionSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgbase_okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v1, Lgbase_okhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lgbase_okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 140
    :cond_1
    new-instance v0, Lgbase_okhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lgbase_okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 152
    :goto_1
    :try_start_0
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 153
    invoke-direct/range {v1 .. v6}, Lgbase_okhttp3/internal/connection/RealConnection;->connectTunnel(IIILgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V

    .line 154
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    .line 159
    :try_start_1
    invoke-direct {p0, v13, v14, v8, v9}, Lgbase_okhttp3/internal/connection/RealConnection;->connectSocket(IILgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V

    .line 161
    :goto_2
    invoke-direct {p0, v10, v8, v9}, Lgbase_okhttp3/internal/connection/RealConnection;->establishProtocol(Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;Lgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V

    .line 162
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    iget-object v5, v7, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;

    const/4 v6, 0x0

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-virtual/range {v1 .. v6}, Lgbase_okhttp3/EventListener;->connectEnd(Lgbase_okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lgbase_okhttp3/Protocol;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :goto_3
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 190
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lgbase_okhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lgbase_okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 195
    :cond_6
    :goto_4
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_7

    .line 196
    iget-object v1, v7, Lgbase_okhttp3/internal/connection/RealConnection;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v1

    .line 197
    :try_start_2
    iget-object v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, v7, Lgbase_okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 198
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    .line 165
    :goto_6
    iget-object v1, v7, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 166
    iget-object v1, v7, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 167
    iput-object v11, v7, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 168
    iput-object v11, v7, Lgbase_okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 169
    iput-object v11, v7, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    .line 170
    iput-object v11, v7, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    .line 171
    iput-object v11, v7, Lgbase_okhttp3/internal/connection/RealConnection;->handshake:Lgbase_okhttp3/Handshake;

    .line 172
    iput-object v11, v7, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;

    .line 173
    iput-object v11, v7, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    .line 175
    iget-object v1, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lgbase_okhttp3/EventListener;->connectEnd(Lgbase_okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lgbase_okhttp3/Protocol;Ljava/lang/Throwable;)V

    if-nez v12, :cond_8

    .line 178
    new-instance v1, Lgbase_okhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lgbase_okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v12, v1

    goto :goto_7

    .line 180
    :cond_8
    invoke-virtual {v12, v0}, Lgbase_okhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_7
    if-eqz p4, :cond_9

    .line 183
    invoke-virtual {v10, v0}, Lgbase_okhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 184
    :cond_9
    throw v12

    .line 132
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public handshake()Lgbase_okhttp3/Handshake;
    .locals 1

    .line 552
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->handshake:Lgbase_okhttp3/Handshake;

    return-object v0
.end method

.method public isEligible(Lgbase_okhttp3/Address;Lgbase_okhttp3/Route;)Z
    .locals 4
    .param p2    # Lgbase_okhttp3/Route;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 420
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->allocationLimit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 423
    :cond_0
    sget-object v0, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgbase_okhttp3/internal/Internal;->equalsNonHost(Lgbase_okhttp3/Address;Lgbase_okhttp3/Address;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 426
    :cond_1
    invoke-virtual {p1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lgbase_okhttp3/internal/connection/RealConnection;->route()Lgbase_okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 436
    :cond_2
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 442
    :cond_4
    invoke-virtual {p2}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 443
    :cond_5
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 444
    :cond_6
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 447
    :cond_7
    invoke-virtual {p2}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object p2

    invoke-virtual {p2}, Lgbase_okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lgbase_okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lgbase_okhttp3/internal/tls/OkHostnameVerifier;

    if-eq p2, v0, :cond_8

    return v2

    .line 448
    :cond_8
    invoke-virtual {p1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p0, p2}, Lgbase_okhttp3/internal/connection/RealConnection;->supportsUrl(Lgbase_okhttp3/HttpUrl;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 452
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lgbase_okhttp3/Address;->certificatePinner()Lgbase_okhttp3/CertificatePinner;

    move-result-object p2

    invoke-virtual {p1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lgbase_okhttp3/internal/connection/RealConnection;->handshake()Lgbase_okhttp3/Handshake;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lgbase_okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public isHealthy(Z)Z
    .locals 4

    .line 509
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Connection;->isShutdown()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-eqz p1, :cond_3

    .line 519
    :try_start_0
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :try_start_1
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 522
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->exhausted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 527
    :try_start_2
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public isMultiplexed()Z
    .locals 1

    .line 560
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newCodec(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Interceptor$Chain;Lgbase_okhttp3/internal/connection/StreamAllocation;)Lgbase_okhttp3/internal/http/HttpCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->http2Connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    .line 477
    new-instance v1, Lgbase_okhttp3/internal/http2/Http2Codec;

    invoke-direct {v1, p1, p2, p3, v0}, Lgbase_okhttp3/internal/http2/Http2Codec;-><init>(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Interceptor$Chain;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/internal/http2/Http2Connection;)V

    return-object v1

    .line 479
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-interface {p2}, Lgbase_okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 480
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->timeout()Lgbase_okio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lgbase_okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lgbase_okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okio/Timeout;

    .line 481
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v0}, Lgbase_okio/BufferedSink;->timeout()Lgbase_okio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lgbase_okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result p2

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Lgbase_okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okio/Timeout;

    .line 482
    new-instance p2, Lgbase_okhttp3/internal/http1/Http1Codec;

    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    invoke-direct {p2, p1, p3, v0, v1}, Lgbase_okhttp3/internal/http1/Http1Codec;-><init>(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)V

    return-object p2
.end method

.method public newWebSocketStreams(Lgbase_okhttp3/internal/connection/StreamAllocation;)Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;
    .locals 7

    .line 487
    new-instance v6, Lgbase_okhttp3/internal/connection/RealConnection$1;

    iget-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->source:Lgbase_okio/BufferedSource;

    iget-object v4, p0, Lgbase_okhttp3/internal/connection/RealConnection;->sink:Lgbase_okio/BufferedSink;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lgbase_okhttp3/internal/connection/RealConnection$1;-><init>(Lgbase_okhttp3/internal/connection/RealConnection;ZLgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;Lgbase_okhttp3/internal/connection/StreamAllocation;)V

    return-object v6
.end method

.method public onSettings(Lgbase_okhttp3/internal/http2/Http2Connection;)V
    .locals 1

    .line 546
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v0

    .line 547
    :try_start_0
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result p1

    iput p1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 548
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStream(Lgbase_okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    sget-object v0, Lgbase_okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lgbase_okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lgbase_okhttp3/internal/http2/Http2Stream;->close(Lgbase_okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public protocol()Lgbase_okhttp3/Protocol;
    .locals 1

    .line 564
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;

    return-object v0
.end method

.method public route()Lgbase_okhttp3/Route;
    .locals 1

    .line 495
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 504
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public supportsUrl(Lgbase_okhttp3/HttpUrl;)Z
    .locals 4

    .line 461
    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v0

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 465
    :cond_0
    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection;->handshake:Lgbase_okhttp3/Handshake;

    if-eqz v0, :cond_1

    sget-object v0, Lgbase_okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lgbase_okhttp3/internal/tls/OkHostnameVerifier;

    .line 468
    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lgbase_okhttp3/internal/connection/RealConnection;->handshake:Lgbase_okhttp3/Handshake;

    invoke-virtual {v3}, Lgbase_okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 467
    invoke-virtual {v0, p1, v3}, Lgbase_okhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    .line 569
    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1}, Lgbase_okhttp3/Route;->address()Lgbase_okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Address;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    .line 571
    invoke-virtual {v1}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->route:Lgbase_okhttp3/Route;

    .line 573
    invoke-virtual {v1}, Lgbase_okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->handshake:Lgbase_okhttp3/Handshake;

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {v1}, Lgbase_okhttp3/Handshake;->cipherSuite()Lgbase_okhttp3/CipherSuite;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/RealConnection;->protocol:Lgbase_okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
