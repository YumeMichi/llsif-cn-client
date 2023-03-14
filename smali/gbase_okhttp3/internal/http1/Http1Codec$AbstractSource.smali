.class abstract Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lgbase_okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

.field protected final timeout:Lgbase_okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lgbase_okhttp3/internal/http1/Http1Codec;)V
    .locals 1

    .line 344
    iput-object p1, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance p1, Lgbase_okio/ForwardingTimeout;

    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lgbase_okhttp3/internal/http1/Http1Codec;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->timeout()Lgbase_okio/Timeout;

    move-result-object v0

    invoke-direct {p1, v0}, Lgbase_okio/ForwardingTimeout;-><init>(Lgbase_okio/Timeout;)V

    iput-object p1, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lgbase_okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lgbase_okhttp3/internal/http1/Http1Codec;Lgbase_okhttp3/internal/http1/Http1Codec$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lgbase_okhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    iget v0, v0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    iget v0, v0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 360
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    iget-object v2, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lgbase_okio/ForwardingTimeout;

    invoke-virtual {v0, v2}, Lgbase_okhttp3/internal/http1/Http1Codec;->detachTimeout(Lgbase_okio/ForwardingTimeout;)V

    .line 362
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    iput v1, v0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    .line 363
    iget-object v0, v0, Lgbase_okhttp3/internal/http1/Http1Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lgbase_okhttp3/internal/http1/Http1Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    invoke-virtual {v0, p1, v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLgbase_okhttp3/internal/http/HttpCodec;)V

    :cond_1
    return-void

    .line 358
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lgbase_okhttp3/internal/http1/Http1Codec;

    iget v1, v1, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lgbase_okio/Timeout;
    .locals 1

    .line 349
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lgbase_okio/ForwardingTimeout;

    return-object v0
.end method
