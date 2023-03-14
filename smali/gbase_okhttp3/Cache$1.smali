.class Lgbase_okhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lgbase_okhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/Cache;


# direct methods
.method constructor <init>(Lgbase_okhttp3/Cache;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lgbase_okhttp3/Cache$1;->this$0:Lgbase_okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lgbase_okhttp3/Cache$1;->this$0:Lgbase_okhttp3/Cache;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Cache;->get(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public put(Lgbase_okhttp3/Response;)Lgbase_okhttp3/internal/cache/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lgbase_okhttp3/Cache$1;->this$0:Lgbase_okhttp3/Cache;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Cache;->put(Lgbase_okhttp3/Response;)Lgbase_okhttp3/internal/cache/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lgbase_okhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lgbase_okhttp3/Cache$1;->this$0:Lgbase_okhttp3/Cache;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Cache;->remove(Lgbase_okhttp3/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .line 162
    iget-object v0, p0, Lgbase_okhttp3/Cache$1;->this$0:Lgbase_okhttp3/Cache;

    invoke-virtual {v0}, Lgbase_okhttp3/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method public trackResponse(Lgbase_okhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lgbase_okhttp3/Cache$1;->this$0:Lgbase_okhttp3/Cache;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Cache;->trackResponse(Lgbase_okhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public update(Lgbase_okhttp3/Response;Lgbase_okhttp3/Response;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lgbase_okhttp3/Cache$1;->this$0:Lgbase_okhttp3/Cache;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/Cache;->update(Lgbase_okhttp3/Response;Lgbase_okhttp3/Response;)V

    return-void
.end method
