.class public final Lgbase_okhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lgbase_okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lgbase_okio/ByteString;

.field private static final ENCODING:Lgbase_okio/ByteString;

.field private static final HOST:Lgbase_okio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lgbase_okio/ByteString;

.field private static final PROXY_CONNECTION:Lgbase_okio/ByteString;

.field private static final TE:Lgbase_okio/ByteString;

.field private static final TRANSFER_ENCODING:Lgbase_okio/ByteString;

.field private static final UPGRADE:Lgbase_okio/ByteString;


# instance fields
.field private final chain:Lgbase_okhttp3/Interceptor$Chain;

.field private final client:Lgbase_okhttp3/OkHttpClient;

.field private final connection:Lgbase_okhttp3/internal/http2/Http2Connection;

.field private stream:Lgbase_okhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    .line 54
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->CONNECTION:Lgbase_okio/ByteString;

    const-string v0, "host"

    .line 55
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->HOST:Lgbase_okio/ByteString;

    const-string v0, "keep-alive"

    .line 56
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lgbase_okio/ByteString;

    const-string v0, "proxy-connection"

    .line 57
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lgbase_okio/ByteString;

    const-string v0, "transfer-encoding"

    .line 58
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lgbase_okio/ByteString;

    const-string v0, "te"

    .line 59
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->TE:Lgbase_okio/ByteString;

    const-string v0, "encoding"

    .line 60
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->ENCODING:Lgbase_okio/ByteString;

    const-string v0, "upgrade"

    .line 61
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->UPGRADE:Lgbase_okio/ByteString;

    const/16 v0, 0xc

    .line 64
    new-array v0, v0, [Lgbase_okio/ByteString;

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->CONNECTION:Lgbase_okio/ByteString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->HOST:Lgbase_okio/ByteString;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lgbase_okio/ByteString;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lgbase_okio/ByteString;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->TE:Lgbase_okio/ByteString;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lgbase_okio/ByteString;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->ENCODING:Lgbase_okio/ByteString;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->UPGRADE:Lgbase_okio/ByteString;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lgbase_okhttp3/internal/http2/Header;->TARGET_METHOD:Lgbase_okio/ByteString;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lgbase_okhttp3/internal/http2/Header;->TARGET_PATH:Lgbase_okio/ByteString;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lgbase_okhttp3/internal/http2/Header;->TARGET_SCHEME:Lgbase_okio/ByteString;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lgbase_okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lgbase_okio/ByteString;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 77
    new-array v0, v10, [Lgbase_okio/ByteString;

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->CONNECTION:Lgbase_okio/ByteString;

    aput-object v1, v0, v2

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->HOST:Lgbase_okio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lgbase_okio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lgbase_okio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->TE:Lgbase_okio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lgbase_okio/ByteString;

    aput-object v1, v0, v7

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->ENCODING:Lgbase_okio/ByteString;

    aput-object v1, v0, v8

    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Codec;->UPGRADE:Lgbase_okio/ByteString;

    aput-object v1, v0, v9

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Interceptor$Chain;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->client:Lgbase_okhttp3/OkHttpClient;

    .line 96
    iput-object p2, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->chain:Lgbase_okhttp3/Interceptor$Chain;

    .line 97
    iput-object p3, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    .line 98
    iput-object p4, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    return-void
.end method

.method public static http2HeadersList(Lgbase_okhttp3/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbase_okhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lgbase_okhttp3/Request;->headers()Lgbase_okhttp3/Headers;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lgbase_okhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    new-instance v2, Lgbase_okhttp3/internal/http2/Header;

    sget-object v3, Lgbase_okhttp3/internal/http2/Header;->TARGET_METHOD:Lgbase_okio/ByteString;

    invoke-virtual {p0}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Lgbase_okhttp3/internal/http2/Header;

    sget-object v3, Lgbase_okhttp3/internal/http2/Header;->TARGET_PATH:Lgbase_okio/ByteString;

    invoke-virtual {p0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lgbase_okhttp3/internal/http/RequestLine;->requestPath(Lgbase_okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 137
    invoke-virtual {p0, v2}, Lgbase_okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    new-instance v3, Lgbase_okhttp3/internal/http2/Header;

    sget-object v4, Lgbase_okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lgbase_okio/ByteString;

    invoke-direct {v3, v4, v2}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    new-instance v2, Lgbase_okhttp3/internal/http2/Header;

    sget-object v3, Lgbase_okhttp3/internal/http2/Header;->TARGET_SCHEME:Lgbase_okio/ByteString;

    invoke-virtual {p0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lgbase_okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 143
    invoke-virtual {v0}, Lgbase_okhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 145
    invoke-virtual {v0, p0}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v3

    .line 146
    sget-object v4, Lgbase_okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    new-instance v4, Lgbase_okhttp3/internal/http2/Header;

    invoke-virtual {v0, p0}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lgbase_okhttp3/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;)",
            "Lgbase_okhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 158
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbase_okhttp3/internal/http2/Header;

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    .line 163
    iget v5, v0, Lgbase_okhttp3/internal/http/StatusLine;->code:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 165
    new-instance v0, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    move-object v4, v0

    move-object v0, v2

    goto :goto_1

    .line 170
    :cond_0
    iget-object v6, v5, Lgbase_okhttp3/internal/http2/Header;->name:Lgbase_okio/ByteString;

    .line 171
    iget-object v5, v5, Lgbase_okhttp3/internal/http2/Header;->value:Lgbase_okio/ByteString;

    invoke-virtual {v5}, Lgbase_okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 172
    sget-object v7, Lgbase_okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lgbase_okio/ByteString;

    invoke-virtual {v6, v7}, Lgbase_okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lgbase_okhttp3/internal/http/StatusLine;

    move-result-object v0

    goto :goto_1

    .line 174
    :cond_1
    sget-object v7, Lgbase_okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 175
    sget-object v7, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {v6}, Lgbase_okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v5}, Lgbase_okhttp3/internal/Internal;->addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 180
    new-instance p0, Lgbase_okhttp3/Response$Builder;

    invoke-direct {p0}, Lgbase_okhttp3/Response$Builder;-><init>()V

    sget-object v1, Lgbase_okhttp3/Protocol;->HTTP_2:Lgbase_okhttp3/Protocol;

    .line 181
    invoke-virtual {p0, v1}, Lgbase_okhttp3/Response$Builder;->protocol(Lgbase_okhttp3/Protocol;)Lgbase_okhttp3/Response$Builder;

    move-result-object p0

    iget v1, v0, Lgbase_okhttp3/internal/http/StatusLine;->code:I

    .line 182
    invoke-virtual {p0, v1}, Lgbase_okhttp3/Response$Builder;->code(I)Lgbase_okhttp3/Response$Builder;

    move-result-object p0

    iget-object v0, v0, Lgbase_okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v0}, Lgbase_okhttp3/Response$Builder;->message(Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;

    move-result-object p0

    .line 184
    invoke-virtual {v4}, Lgbase_okhttp3/Headers$Builder;->build()Lgbase_okhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbase_okhttp3/Response$Builder;->headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Response$Builder;

    move-result-object p0

    return-object p0

    .line 178
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 193
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    sget-object v1, Lgbase_okhttp3/internal/http2/ErrorCode;->CANCEL:Lgbase_okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lgbase_okhttp3/internal/http2/Http2Stream;->closeLater(Lgbase_okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lgbase_okhttp3/Request;J)Lgbase_okio/Sink;
    .locals 0

    .line 102
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Stream;->getSink()Lgbase_okio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Stream;->getSink()Lgbase_okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lgbase_okio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/ResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Lgbase_okhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/http2/Http2Stream;->getSource()Lgbase_okio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgbase_okhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lgbase_okhttp3/internal/http2/Http2Codec;Lgbase_okio/Source;)V

    .line 189
    new-instance v1, Lgbase_okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lgbase_okhttp3/internal/http/RealResponseBody;-><init>(Lgbase_okhttp3/Headers;Lgbase_okio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders(Z)Lgbase_okhttp3/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Stream;->takeResponseHeaders()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lgbase_okhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ljava/util/List;)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 126
    sget-object p1, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lgbase_okhttp3/internal/Internal;->code(Lgbase_okhttp3/Response$Builder;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public writeRequestHeaders(Lgbase_okhttp3/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 109
    :goto_0
    invoke-static {p1}, Lgbase_okhttp3/internal/http2/Http2Codec;->http2HeadersList(Lgbase_okhttp3/Request;)Ljava/util/List;

    move-result-object p1

    .line 110
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->connection:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Lgbase_okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lgbase_okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    .line 111
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Stream;->readTimeout()Lgbase_okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->chain:Lgbase_okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lgbase_okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lgbase_okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okio/Timeout;

    .line 112
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->stream:Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Stream;->writeTimeout()Lgbase_okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Codec;->chain:Lgbase_okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lgbase_okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lgbase_okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okio/Timeout;

    return-void
.end method
