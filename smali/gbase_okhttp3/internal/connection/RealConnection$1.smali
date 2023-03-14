.class Lgbase_okhttp3/internal/connection/RealConnection$1;
.super Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;
.source "RealConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lgbase_okhttp3/internal/connection/StreamAllocation;)Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/connection/RealConnection;ZLgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;Lgbase_okhttp3/internal/connection/StreamAllocation;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/RealConnection$1;->this$0:Lgbase_okhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Lgbase_okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec()Lgbase_okhttp3/internal/http/HttpCodec;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLgbase_okhttp3/internal/http/HttpCodec;)V

    return-void
.end method
