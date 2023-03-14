.class public abstract Lgbase_okhttp3/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lgbase_okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(Lgbase_okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailure(Lgbase_okhttp3/WebSocket;Ljava/lang/Throwable;Lgbase_okhttp3/Response;)V
    .locals 0
    .param p3    # Lgbase_okhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onMessage(Lgbase_okhttp3/WebSocket;Lgbase_okio/ByteString;)V
    .locals 0

    return-void
.end method

.method public onMessage(Lgbase_okhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOpen(Lgbase_okhttp3/WebSocket;Lgbase_okhttp3/Response;)V
    .locals 0

    return-void
.end method
