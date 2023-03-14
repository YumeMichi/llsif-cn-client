.class public final Lgbase_okhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lgbase_okhttp3/Interceptor;


# instance fields
.field public final client:Lgbase_okhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lgbase_okhttp3/OkHttpClient;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/ConnectInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public intercept(Lgbase_okhttp3/Interceptor$Chain;)Lgbase_okhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    move-object v0, p1

    check-cast v0, Lgbase_okhttp3/internal/http/RealInterceptorChain;

    .line 38
    invoke-virtual {v0}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->request()Lgbase_okhttp3/Request;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lgbase_okhttp3/internal/connection/StreamAllocation;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 43
    iget-object v4, p0, Lgbase_okhttp3/internal/connection/ConnectInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2, v4, p1, v3}, Lgbase_okhttp3/internal/connection/StreamAllocation;->newStream(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Interceptor$Chain;Z)Lgbase_okhttp3/internal/http/HttpCodec;

    move-result-object p1

    .line 44
    invoke-virtual {v2}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v3

    .line 46
    invoke-virtual {v0, v1, v2, p1, v3}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->proceed(Lgbase_okhttp3/Request;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/internal/http/HttpCodec;Lgbase_okhttp3/internal/connection/RealConnection;)Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
