.class Lgbase_okhttp3/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lgbase_okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/internal/ws/RealWebSocket;->connect(Lgbase_okhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

.field final synthetic val$pingIntervalMillis:I

.field final synthetic val$request:Lgbase_okhttp3/Request;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/ws/RealWebSocket;Lgbase_okhttp3/Request;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->val$request:Lgbase_okhttp3/Request;

    iput p3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lgbase_okhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 210
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lgbase_okhttp3/Response;)V

    return-void
.end method

.method public onResponse(Lgbase_okhttp3/Call;Lgbase_okhttp3/Response;)V
    .locals 4

    .line 185
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2}, Lgbase_okhttp3/internal/ws/RealWebSocket;->checkResponse(Lgbase_okhttp3/Response;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    sget-object v0, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/internal/Internal;->streamAllocation(Lgbase_okhttp3/Call;)Lgbase_okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 195
    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbase_okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lgbase_okhttp3/internal/connection/StreamAllocation;)Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v0

    .line 199
    :try_start_1
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    iget-object v1, v1, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    iget-object v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, v2, p2}, Lgbase_okhttp3/WebSocketListener;->onOpen(Lgbase_okhttp3/WebSocket;Lgbase_okhttp3/Response;)V

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp WebSocket "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->val$request:Lgbase_okhttp3/Request;

    invoke-virtual {v1}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 201
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    iget v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    int-to-long v2, v2

    invoke-virtual {v1, p2, v2, v3, v0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;JLgbase_okhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 202
    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 203
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    iget-object p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lgbase_okhttp3/Response;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 187
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$2;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lgbase_okhttp3/Response;)V

    .line 188
    invoke-static {p2}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
