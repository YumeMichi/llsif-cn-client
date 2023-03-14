.class final Lgbase_okhttp3/OkHttpClient$1;
.super Lgbase_okhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lgbase_okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-virtual {p1, p2}, Lgbase_okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-virtual {p1, p2, p3}, Lgbase_okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Lgbase_okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 183
    invoke-virtual {p1, p2, p3}, Lgbase_okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public code(Lgbase_okhttp3/Response$Builder;)I
    .locals 0

    .line 178
    iget p1, p1, Lgbase_okhttp3/Response$Builder;->code:I

    return p1
.end method

.method public connectionBecameIdle(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/internal/connection/RealConnection;)Z
    .locals 0

    .line 152
    invoke-virtual {p1, p2}, Lgbase_okhttp3/ConnectionPool;->connectionBecameIdle(Lgbase_okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public deduplicate(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 0

    .line 166
    invoke-virtual {p1, p2, p3}, Lgbase_okhttp3/ConnectionPool;->deduplicate(Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equalsNonHost(Lgbase_okhttp3/Address;Lgbase_okhttp3/Address;)Z
    .locals 0

    .line 161
    invoke-virtual {p1, p2}, Lgbase_okhttp3/Address;->equalsNonHost(Lgbase_okhttp3/Address;)Z

    move-result p1

    return p1
.end method

.method public get(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/Route;)Lgbase_okhttp3/internal/connection/RealConnection;
    .locals 0

    .line 157
    invoke-virtual {p1, p2, p3, p4}, Lgbase_okhttp3/ConnectionPool;->get(Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/Route;)Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object p1

    return-object p1
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lgbase_okhttp3/HttpUrl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lgbase_okhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lgbase_okhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocketCall(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;
    .locals 1

    const/4 v0, 0x1

    .line 196
    invoke-static {p1, p2, v0}, Lgbase_okhttp3/RealCall;->newRealCall(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;Z)Lgbase_okhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public put(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 170
    invoke-virtual {p1, p2}, Lgbase_okhttp3/ConnectionPool;->put(Lgbase_okhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Lgbase_okhttp3/ConnectionPool;)Lgbase_okhttp3/internal/connection/RouteDatabase;
    .locals 0

    .line 174
    iget-object p1, p1, Lgbase_okhttp3/ConnectionPool;->routeDatabase:Lgbase_okhttp3/internal/connection/RouteDatabase;

    return-object p1
.end method

.method public setCache(Lgbase_okhttp3/OkHttpClient$Builder;Lgbase_okhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 147
    invoke-virtual {p1, p2}, Lgbase_okhttp3/OkHttpClient$Builder;->setInternalCache(Lgbase_okhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public streamAllocation(Lgbase_okhttp3/Call;)Lgbase_okhttp3/internal/connection/StreamAllocation;
    .locals 0

    .line 192
    check-cast p1, Lgbase_okhttp3/RealCall;

    invoke-virtual {p1}, Lgbase_okhttp3/RealCall;->streamAllocation()Lgbase_okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    return-object p1
.end method
