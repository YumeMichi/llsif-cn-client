.class final Lgbase_okhttp3/RequestBody$1;
.super Lgbase_okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/RequestBody;->create(Lgbase_okhttp3/MediaType;Lgbase_okio/ByteString;)Lgbase_okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lgbase_okio/ByteString;

.field final synthetic val$contentType:Lgbase_okhttp3/MediaType;


# direct methods
.method constructor <init>(Lgbase_okhttp3/MediaType;Lgbase_okio/ByteString;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lgbase_okhttp3/RequestBody$1;->val$contentType:Lgbase_okhttp3/MediaType;

    iput-object p2, p0, Lgbase_okhttp3/RequestBody$1;->val$content:Lgbase_okio/ByteString;

    invoke-direct {p0}, Lgbase_okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lgbase_okhttp3/RequestBody$1;->val$content:Lgbase_okio/ByteString;

    invoke-virtual {v0}, Lgbase_okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lgbase_okhttp3/MediaType;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lgbase_okhttp3/RequestBody$1;->val$contentType:Lgbase_okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lgbase_okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lgbase_okhttp3/RequestBody$1;->val$content:Lgbase_okio/ByteString;

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->write(Lgbase_okio/ByteString;)Lgbase_okio/BufferedSink;

    return-void
.end method
