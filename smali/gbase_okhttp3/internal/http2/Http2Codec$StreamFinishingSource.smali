.class Lgbase_okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lgbase_okio/ForwardingSource;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/internal/http2/Http2Codec;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/http2/Http2Codec;Lgbase_okio/Source;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lgbase_okhttp3/internal/http2/Http2Codec;

    .line 198
    invoke-direct {p0, p2}, Lgbase_okio/ForwardingSource;-><init>(Lgbase_okio/Source;)V

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

    .line 202
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lgbase_okhttp3/internal/http2/Http2Codec;

    iget-object v0, v0, Lgbase_okhttp3/internal/http2/Http2Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lgbase_okhttp3/internal/http2/Http2Codec;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLgbase_okhttp3/internal/http/HttpCodec;)V

    .line 203
    invoke-super {p0}, Lgbase_okio/ForwardingSource;->close()V

    return-void
.end method
