.class public abstract Lgbase_okhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lgbase_okhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .line 46
    new-instance v0, Lgbase_okhttp3/OkHttpClient;

    invoke-direct {v0}, Lgbase_okhttp3/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lgbase_okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lgbase_okhttp3/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract equalsNonHost(Lgbase_okhttp3/Address;Lgbase_okhttp3/Address;)Z
.end method

.method public abstract get(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/Route;)Lgbase_okhttp3/internal/connection/RealConnection;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lgbase_okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract newWebSocketCall(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;
.end method

.method public abstract put(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lgbase_okhttp3/ConnectionPool;)Lgbase_okhttp3/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Lgbase_okhttp3/OkHttpClient$Builder;Lgbase_okhttp3/internal/cache/InternalCache;)V
.end method

.method public abstract streamAllocation(Lgbase_okhttp3/Call;)Lgbase_okhttp3/internal/connection/StreamAllocation;
.end method
