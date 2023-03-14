.class public Lgbase_okhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lgbase_okhttp3/internal/http2/Http2Connection$Listener;

.field pushObserver:Lgbase_okhttp3/internal/http2/PushObserver;

.field sink:Lgbase_okio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lgbase_okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    sget-object v0, Lgbase_okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lgbase_okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->listener:Lgbase_okhttp3/internal/http2/Http2Connection$Listener;

    .line 510
    sget-object v0, Lgbase_okhttp3/internal/http2/PushObserver;->CANCEL:Lgbase_okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lgbase_okhttp3/internal/http2/PushObserver;

    .line 518
    iput-boolean p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return-void
.end method


# virtual methods
.method public build()Lgbase_okhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 546
    new-instance v0, Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lgbase_okhttp3/internal/http2/Http2Connection;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lgbase_okhttp3/internal/http2/Http2Connection$Listener;)Lgbase_okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 536
    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->listener:Lgbase_okhttp3/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public pushObserver(Lgbase_okhttp3/internal/http2/PushObserver;)Lgbase_okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 541
    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lgbase_okhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lgbase_okhttp3/internal/http2/Http2Connection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {p1}, Lgbase_okio/Okio;->source(Ljava/net/Socket;)Lgbase_okio/Source;

    move-result-object v1

    invoke-static {v1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lgbase_okio/Okio;->sink(Ljava/net/Socket;)Lgbase_okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object v2

    .line 522
    invoke-virtual {p0, p1, v0, v1, v2}, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)Lgbase_okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)Lgbase_okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 528
    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 529
    iput-object p2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    .line 530
    iput-object p3, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->source:Lgbase_okio/BufferedSource;

    .line 531
    iput-object p4, p0, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->sink:Lgbase_okio/BufferedSink;

    return-object p0
.end method
