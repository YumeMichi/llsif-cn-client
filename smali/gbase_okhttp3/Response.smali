.class public final Lgbase_okhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lgbase_okhttp3/ResponseBody;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile cacheControl:Lgbase_okhttp3/CacheControl;

.field final cacheResponse:Lgbase_okhttp3/Response;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final code:I

.field final handshake:Lgbase_okhttp3/Handshake;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final headers:Lgbase_okhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lgbase_okhttp3/Response;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final priorResponse:Lgbase_okhttp3/Response;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final protocol:Lgbase_okhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lgbase_okhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lgbase_okhttp3/Response$Builder;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->request:Lgbase_okhttp3/Request;

    iput-object v0, p0, Lgbase_okhttp3/Response;->request:Lgbase_okhttp3/Request;

    .line 62
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->protocol:Lgbase_okhttp3/Protocol;

    iput-object v0, p0, Lgbase_okhttp3/Response;->protocol:Lgbase_okhttp3/Protocol;

    .line 63
    iget v0, p1, Lgbase_okhttp3/Response$Builder;->code:I

    iput v0, p0, Lgbase_okhttp3/Response;->code:I

    .line 64
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lgbase_okhttp3/Response;->message:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->handshake:Lgbase_okhttp3/Handshake;

    iput-object v0, p0, Lgbase_okhttp3/Response;->handshake:Lgbase_okhttp3/Handshake;

    .line 66
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    invoke-virtual {v0}, Lgbase_okhttp3/Headers$Builder;->build()Lgbase_okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Response;->headers:Lgbase_okhttp3/Headers;

    .line 67
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->body:Lgbase_okhttp3/ResponseBody;

    iput-object v0, p0, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    .line 68
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->networkResponse:Lgbase_okhttp3/Response;

    iput-object v0, p0, Lgbase_okhttp3/Response;->networkResponse:Lgbase_okhttp3/Response;

    .line 69
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->cacheResponse:Lgbase_okhttp3/Response;

    iput-object v0, p0, Lgbase_okhttp3/Response;->cacheResponse:Lgbase_okhttp3/Response;

    .line 70
    iget-object v0, p1, Lgbase_okhttp3/Response$Builder;->priorResponse:Lgbase_okhttp3/Response;

    iput-object v0, p0, Lgbase_okhttp3/Response;->priorResponse:Lgbase_okhttp3/Response;

    .line 71
    iget-wide v0, p1, Lgbase_okhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lgbase_okhttp3/Response;->sentRequestAtMillis:J

    .line 72
    iget-wide v0, p1, Lgbase_okhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lgbase_okhttp3/Response;->receivedResponseAtMillis:J

    return-void
.end method


# virtual methods
.method public body()Lgbase_okhttp3/ResponseBody;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 178
    iget-object v0, p0, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lgbase_okhttp3/CacheControl;
    .locals 1

    .line 251
    iget-object v0, p0, Lgbase_okhttp3/Response;->cacheControl:Lgbase_okhttp3/CacheControl;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/Response;->headers:Lgbase_okhttp3/Headers;

    invoke-static {v0}, Lgbase_okhttp3/CacheControl;->parse(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Response;->cacheControl:Lgbase_okhttp3/CacheControl;

    :goto_0
    return-object v0
.end method

.method public cacheResponse()Lgbase_okhttp3/Response;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 215
    iget-object v0, p0, Lgbase_okhttp3/Response;->cacheResponse:Lgbase_okhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 236
    iget v0, p0, Lgbase_okhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    goto :goto_0

    :cond_0
    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    .line 243
    :goto_0
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lgbase_okhttp3/internal/http/HttpHeaders;->parseChallenges(Lgbase_okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 241
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 281
    iget-object v0, p0, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lgbase_okhttp3/ResponseBody;->close()V

    return-void

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public code()I
    .locals 1

    .line 99
    iget v0, p0, Lgbase_okhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lgbase_okhttp3/Handshake;
    .locals 1

    .line 120
    iget-object v0, p0, Lgbase_okhttp3/Response;->handshake:Lgbase_okhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, v0}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 132
    iget-object v0, p0, Lgbase_okhttp3/Response;->headers:Lgbase_okhttp3/Headers;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public headers()Lgbase_okhttp3/Headers;
    .locals 1

    .line 137
    iget-object v0, p0, Lgbase_okhttp3/Response;->headers:Lgbase_okhttp3/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lgbase_okhttp3/Response;->headers:Lgbase_okhttp3/Headers;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isRedirect()Z
    .locals 2

    .line 187
    iget v0, p0, Lgbase_okhttp3/Response;->code:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 2

    .line 107
    iget v0, p0, Lgbase_okhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lgbase_okhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lgbase_okhttp3/Response;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 206
    iget-object v0, p0, Lgbase_okhttp3/Response;->networkResponse:Lgbase_okhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Lgbase_okhttp3/Response$Builder;
    .locals 1

    .line 182
    new-instance v0, Lgbase_okhttp3/Response$Builder;

    invoke-direct {v0, p0}, Lgbase_okhttp3/Response$Builder;-><init>(Lgbase_okhttp3/Response;)V

    return-object v0
.end method

.method public peekBody(J)Lgbase_okhttp3/ResponseBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    invoke-virtual {v0}, Lgbase_okhttp3/ResponseBody;->source()Lgbase_okio/BufferedSource;

    move-result-object v0

    .line 153
    invoke-interface {v0, p1, p2}, Lgbase_okio/BufferedSource;->request(J)Z

    .line 154
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->buffer()Lgbase_okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okio/Buffer;->clone()Lgbase_okio/Buffer;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lgbase_okio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 159
    new-instance v1, Lgbase_okio/Buffer;

    invoke-direct {v1}, Lgbase_okio/Buffer;-><init>()V

    .line 160
    invoke-virtual {v1, v0, p1, p2}, Lgbase_okio/Buffer;->write(Lgbase_okio/Buffer;J)V

    .line 161
    invoke-virtual {v0}, Lgbase_okio/Buffer;->clear()V

    move-object v0, v1

    .line 166
    :cond_0
    iget-object p1, p0, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    invoke-virtual {p1}, Lgbase_okhttp3/ResponseBody;->contentType()Lgbase_okhttp3/MediaType;

    move-result-object p1

    invoke-virtual {v0}, Lgbase_okio/Buffer;->size()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v0}, Lgbase_okhttp3/ResponseBody;->create(Lgbase_okhttp3/MediaType;JLgbase_okio/BufferedSource;)Lgbase_okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public priorResponse()Lgbase_okhttp3/Response;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 225
    iget-object v0, p0, Lgbase_okhttp3/Response;->priorResponse:Lgbase_okhttp3/Response;

    return-object v0
.end method

.method public protocol()Lgbase_okhttp3/Protocol;
    .locals 1

    .line 94
    iget-object v0, p0, Lgbase_okhttp3/Response;->protocol:Lgbase_okhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lgbase_okhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lgbase_okhttp3/Request;
    .locals 1

    .line 87
    iget-object v0, p0, Lgbase_okhttp3/Response;->request:Lgbase_okhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .locals 2

    .line 261
    iget-wide v0, p0, Lgbase_okhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/Response;->protocol:Lgbase_okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbase_okhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okhttp3/Response;->request:Lgbase_okhttp3/Request;

    .line 295
    invoke-virtual {v1}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
