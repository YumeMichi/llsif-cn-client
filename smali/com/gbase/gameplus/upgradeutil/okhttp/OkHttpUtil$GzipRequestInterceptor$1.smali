.class Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor$1;
.super Lgbase_okhttp3/RequestBody;
.source "OkHttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;->gzip(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;

.field final synthetic val$body:Lgbase_okhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;Lgbase_okhttp3/RequestBody;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor$1;->this$0:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;

    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor$1;->val$body:Lgbase_okhttp3/RequestBody;

    invoke-direct {p0}, Lgbase_okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lgbase_okhttp3/MediaType;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor$1;->val$body:Lgbase_okhttp3/RequestBody;

    invoke-virtual {v0}, Lgbase_okhttp3/RequestBody;->contentType()Lgbase_okhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lgbase_okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Lgbase_okio/GzipSink;

    invoke-direct {v0, p1}, Lgbase_okio/GzipSink;-><init>(Lgbase_okio/Sink;)V

    invoke-static {v0}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor$1;->val$body:Lgbase_okhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/RequestBody;->writeTo(Lgbase_okio/BufferedSink;)V

    .line 168
    :try_start_0
    invoke-interface {p1}, Lgbase_okio/BufferedSink;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
