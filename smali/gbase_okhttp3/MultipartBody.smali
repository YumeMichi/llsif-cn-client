.class public final Lgbase_okhttp3/MultipartBody;
.super Lgbase_okhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/MultipartBody$Builder;,
        Lgbase_okhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lgbase_okhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lgbase_okhttp3/MediaType;

.field public static final FORM:Lgbase_okhttp3/MediaType;

.field public static final MIXED:Lgbase_okhttp3/MediaType;

.field public static final PARALLEL:Lgbase_okhttp3/MediaType;


# instance fields
.field private final boundary:Lgbase_okio/ByteString;

.field private contentLength:J

.field private final contentType:Lgbase_okhttp3/MediaType;

.field private final originalType:Lgbase_okhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 36
    invoke-static {v0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/MultipartBody;->MIXED:Lgbase_okhttp3/MediaType;

    const-string v0, "multipart/alternative"

    .line 43
    invoke-static {v0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/MultipartBody;->ALTERNATIVE:Lgbase_okhttp3/MediaType;

    const-string v0, "multipart/digest"

    .line 50
    invoke-static {v0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/MultipartBody;->DIGEST:Lgbase_okhttp3/MediaType;

    const-string v0, "multipart/parallel"

    .line 56
    invoke-static {v0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/MultipartBody;->PARALLEL:Lgbase_okhttp3/MediaType;

    const-string v0, "multipart/form-data"

    .line 63
    invoke-static {v0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/MultipartBody;->FORM:Lgbase_okhttp3/MediaType;

    const/4 v0, 0x2

    .line 65
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lgbase_okhttp3/MultipartBody;->COLONSPACE:[B

    .line 66
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    .line 67
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lgbase_okhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lgbase_okio/ByteString;Lgbase_okhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbase_okio/ByteString;",
            "Lgbase_okhttp3/MediaType;",
            "Ljava/util/List<",
            "Lgbase_okhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lgbase_okhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lgbase_okhttp3/MultipartBody;->contentLength:J

    .line 76
    iput-object p1, p0, Lgbase_okhttp3/MultipartBody;->boundary:Lgbase_okio/ByteString;

    .line 77
    iput-object p2, p0, Lgbase_okhttp3/MultipartBody;->originalType:Lgbase_okhttp3/MediaType;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgbase_okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/MultipartBody;->contentType:Lgbase_okhttp3/MediaType;

    .line 79
    invoke-static {p3}, Lgbase_okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 206
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    .line 218
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "%22"

    .line 215
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    .line 212
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    .line 209
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private writeOrCountBytes(Lgbase_okio/BufferedSink;Z)J
    .locals 12
    .param p1    # Lgbase_okio/BufferedSink;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 130
    new-instance p1, Lgbase_okio/Buffer;

    invoke-direct {p1}, Lgbase_okio/Buffer;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    iget-object v1, p0, Lgbase_okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 134
    iget-object v6, p0, Lgbase_okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgbase_okhttp3/MultipartBody$Part;

    .line 135
    iget-object v7, v6, Lgbase_okhttp3/MultipartBody$Part;->headers:Lgbase_okhttp3/Headers;

    .line 136
    iget-object v6, v6, Lgbase_okhttp3/MultipartBody$Part;->body:Lgbase_okhttp3/RequestBody;

    .line 138
    sget-object v8, Lgbase_okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v8}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    .line 139
    iget-object v8, p0, Lgbase_okhttp3/MultipartBody;->boundary:Lgbase_okio/ByteString;

    invoke-interface {p1, v8}, Lgbase_okio/BufferedSink;->write(Lgbase_okio/ByteString;)Lgbase_okio/BufferedSink;

    .line 140
    sget-object v8, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v8}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    if-eqz v7, :cond_1

    .line 143
    invoke-virtual {v7}, Lgbase_okhttp3/Headers;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 144
    invoke-virtual {v7, v9}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v10

    sget-object v11, Lgbase_okhttp3/MultipartBody;->COLONSPACE:[B

    .line 145
    invoke-interface {v10, v11}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    move-result-object v10

    .line 146
    invoke-virtual {v7, v9}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v10

    sget-object v11, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    .line 147
    invoke-interface {v10, v11}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 151
    :cond_1
    invoke-virtual {v6}, Lgbase_okhttp3/RequestBody;->contentType()Lgbase_okhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 153
    invoke-interface {p1, v8}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v8

    .line 154
    invoke-virtual {v7}, Lgbase_okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v7

    sget-object v8, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    .line 155
    invoke-interface {v7, v8}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    .line 158
    :cond_2
    invoke-virtual {v6}, Lgbase_okhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 160
    invoke-interface {p1, v9}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v9

    .line 161
    invoke-interface {v9, v7, v8}, Lgbase_okio/BufferedSink;->writeDecimalLong(J)Lgbase_okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    .line 162
    invoke-interface {v9, v10}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 165
    invoke-virtual {v0}, Lgbase_okio/Buffer;->clear()V

    return-wide v9

    .line 169
    :cond_4
    :goto_3
    sget-object v9, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v9}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    if-eqz p2, :cond_5

    add-long/2addr v4, v7

    goto :goto_4

    .line 174
    :cond_5
    invoke-virtual {v6, p1}, Lgbase_okhttp3/RequestBody;->writeTo(Lgbase_okio/BufferedSink;)V

    .line 177
    :goto_4
    sget-object v6, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v6}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 180
    :cond_6
    sget-object v1, Lgbase_okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v1}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    .line 181
    iget-object v1, p0, Lgbase_okhttp3/MultipartBody;->boundary:Lgbase_okio/ByteString;

    invoke-interface {p1, v1}, Lgbase_okio/BufferedSink;->write(Lgbase_okio/ByteString;)Lgbase_okio/BufferedSink;

    .line 182
    sget-object v1, Lgbase_okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v1}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    .line 183
    sget-object v1, Lgbase_okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v1}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    if-eqz p2, :cond_7

    .line 186
    invoke-virtual {v0}, Lgbase_okio/Buffer;->size()J

    move-result-wide p1

    add-long/2addr v4, p1

    .line 187
    invoke-virtual {v0}, Lgbase_okio/Buffer;->clear()V

    :cond_7
    return-wide v4
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody;->boundary:Lgbase_okio/ByteString;

    invoke-virtual {v0}, Lgbase_okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-wide v0, p0, Lgbase_okhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 111
    invoke-direct {p0, v0, v1}, Lgbase_okhttp3/MultipartBody;->writeOrCountBytes(Lgbase_okio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lgbase_okhttp3/MultipartBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lgbase_okhttp3/MediaType;
    .locals 1

    .line 105
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody;->contentType:Lgbase_okhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lgbase_okhttp3/MultipartBody$Part;
    .locals 1

    .line 100
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbase_okhttp3/MultipartBody$Part;

    return-object p1
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 92
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lgbase_okhttp3/MediaType;
    .locals 1

    .line 83
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody;->originalType:Lgbase_okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lgbase_okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/MultipartBody;->writeOrCountBytes(Lgbase_okio/BufferedSink;Z)J

    return-void
.end method
