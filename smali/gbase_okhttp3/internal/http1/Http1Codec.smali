.class public final Lgbase_okhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lgbase_okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lgbase_okhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lgbase_okhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lgbase_okhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lgbase_okhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lgbase_okhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lgbase_okhttp3/OkHttpClient;

.field final sink:Lgbase_okio/BufferedSink;

.field final source:Lgbase_okio/BufferedSource;

.field state:I

.field final streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    .line 90
    iput-object p1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->client:Lgbase_okhttp3/OkHttpClient;

    .line 91
    iput-object p2, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    .line 92
    iput-object p3, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->source:Lgbase_okio/BufferedSource;

    .line 93
    iput-object p4, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->sink:Lgbase_okio/BufferedSink;

    return-void
.end method

.method private getTransferStream(Lgbase_okhttp3/Response;)Lgbase_okio/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lgbase_okhttp3/internal/http/HttpHeaders;->hasBody(Lgbase_okhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 139
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lgbase_okio/Source;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    .line 142
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbase_okhttp3/internal/http1/Http1Codec;->newChunkedSource(Lgbase_okhttp3/HttpUrl;)Lgbase_okio/Source;

    move-result-object p1

    return-object p1

    .line 146
    :cond_1
    invoke-static {p1}, Lgbase_okhttp3/internal/http/HttpHeaders;->contentLength(Lgbase_okhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lgbase_okio/Source;

    move-result-object p1

    return-object p1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lgbase_okio/Source;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 112
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lgbase_okhttp3/Request;J)Lgbase_okio/Sink;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 97
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http1/Http1Codec;->newChunkedSink()Lgbase_okio/Sink;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p0, p2, p3}, Lgbase_okhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lgbase_okio/Sink;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method detachTimeout(Lgbase_okio/ForwardingTimeout;)V
    .locals 2

    .line 260
    invoke-virtual {p1}, Lgbase_okio/ForwardingTimeout;->delegate()Lgbase_okio/Timeout;

    move-result-object v0

    .line 261
    sget-object v1, Lgbase_okio/Timeout;->NONE:Lgbase_okio/Timeout;

    invoke-virtual {p1, v1}, Lgbase_okio/ForwardingTimeout;->setDelegate(Lgbase_okio/Timeout;)Lgbase_okio/ForwardingTimeout;

    .line 262
    invoke-virtual {v0}, Lgbase_okio/Timeout;->clearDeadline()Lgbase_okio/Timeout;

    .line 263
    invoke-virtual {v0}, Lgbase_okio/Timeout;->clearTimeout()Lgbase_okio/Timeout;

    return-void
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v0}, Lgbase_okio/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v0}, Lgbase_okio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 159
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newChunkedSink()Lgbase_okio/Sink;
    .locals 3

    .line 223
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 224
    iput v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    .line 225
    new-instance v0, Lgbase_okhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lgbase_okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lgbase_okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Lgbase_okhttp3/HttpUrl;)Lgbase_okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 242
    iput v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    .line 243
    new-instance v0, Lgbase_okhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lgbase_okhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lgbase_okhttp3/internal/http1/Http1Codec;Lgbase_okhttp3/HttpUrl;)V

    return-object v0

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSink(J)Lgbase_okio/Sink;
    .locals 2

    .line 229
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 230
    iput v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    .line 231
    new-instance v0, Lgbase_okhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lgbase_okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lgbase_okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSource(J)Lgbase_okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 236
    iput v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    .line 237
    new-instance v0, Lgbase_okhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lgbase_okhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lgbase_okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newUnknownLengthSource()Lgbase_okio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 249
    iput v1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    .line 250
    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 251
    new-instance v0, Lgbase_okhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lgbase_okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lgbase_okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openResponseBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/ResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http1/Http1Codec;->getTransferStream(Lgbase_okhttp3/Response;)Lgbase_okio/Source;

    move-result-object v0

    .line 134
    new-instance v1, Lgbase_okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lgbase_okhttp3/internal/http/RealResponseBody;-><init>(Lgbase_okhttp3/Headers;Lgbase_okio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lgbase_okhttp3/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    .line 216
    :goto_0
    iget-object v1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v1}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lgbase_okhttp3/internal/Internal;->addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Lgbase_okhttp3/Headers$Builder;->build()Lgbase_okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readResponseHeaders(Z)Lgbase_okhttp3/Response$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lgbase_okhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 192
    new-instance v1, Lgbase_okhttp3/Response$Builder;

    invoke-direct {v1}, Lgbase_okhttp3/Response$Builder;-><init>()V

    iget-object v2, v0, Lgbase_okhttp3/internal/http/StatusLine;->protocol:Lgbase_okhttp3/Protocol;

    .line 193
    invoke-virtual {v1, v2}, Lgbase_okhttp3/Response$Builder;->protocol(Lgbase_okhttp3/Protocol;)Lgbase_okhttp3/Response$Builder;

    move-result-object v1

    iget v2, v0, Lgbase_okhttp3/internal/http/StatusLine;->code:I

    .line 194
    invoke-virtual {v1, v2}, Lgbase_okhttp3/Response$Builder;->code(I)Lgbase_okhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lgbase_okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v2}, Lgbase_okhttp3/Response$Builder;->message(Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http1/Http1Codec;->readHeaders()Lgbase_okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgbase_okhttp3/Response$Builder;->headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Response$Builder;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 198
    iget p1, v0, Lgbase_okhttp3/internal/http/StatusLine;->code:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x4

    .line 202
    iput p1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 206
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 208
    throw v0
.end method

.method public writeRequest(Lgbase_okhttp3/Headers;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v0, p2}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    const/4 p2, 0x0

    .line 174
    invoke-virtual {p1}, Lgbase_okhttp3/Headers;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 175
    iget-object v2, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->sink:Lgbase_okio/BufferedSink;

    invoke-virtual {p1, p2}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 176
    invoke-interface {v2, v3}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v2

    .line 177
    invoke-virtual {p1, p2}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v2

    .line 178
    invoke-interface {v2, v0}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    const/4 p1, 0x1

    .line 181
    iput p1, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    return-void

    .line 172
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeRequestHeaders(Lgbase_okhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lgbase_okhttp3/internal/http1/Http1Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    .line 128
    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/RealConnection;->route()Lgbase_okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 127
    invoke-static {p1, v0}, Lgbase_okhttp3/internal/http/RequestLine;->get(Lgbase_okhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lgbase_okhttp3/Request;->headers()Lgbase_okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lgbase_okhttp3/internal/http1/Http1Codec;->writeRequest(Lgbase_okhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
