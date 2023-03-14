.class public abstract Lgbase_okhttp3/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lgbase_okhttp3/MediaType;Lgbase_okio/ByteString;)Lgbase_okhttp3/RequestBody;
    .locals 1
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    new-instance v0, Lgbase_okhttp3/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lgbase_okhttp3/RequestBody$1;-><init>(Lgbase_okhttp3/MediaType;Lgbase_okio/ByteString;)V

    return-object v0
.end method

.method public static create(Lgbase_okhttp3/MediaType;Ljava/io/File;)Lgbase_okhttp3/RequestBody;
    .locals 1
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Lgbase_okhttp3/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lgbase_okhttp3/RequestBody$3;-><init>(Lgbase_okhttp3/MediaType;Ljava/io/File;)V

    return-object v0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lgbase_okhttp3/MediaType;Ljava/lang/String;)Lgbase_okhttp3/RequestBody;
    .locals 2
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    sget-object v0, Lgbase_okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Lgbase_okhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lgbase_okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object p0

    .line 57
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Lgbase_okhttp3/RequestBody;->create(Lgbase_okhttp3/MediaType;[B)Lgbase_okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lgbase_okhttp3/MediaType;[B)Lgbase_okhttp3/RequestBody;
    .locals 2
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lgbase_okhttp3/RequestBody;->create(Lgbase_okhttp3/MediaType;[BII)Lgbase_okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lgbase_okhttp3/MediaType;[BII)Lgbase_okhttp3/RequestBody;
    .locals 7
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 88
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lgbase_okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 89
    new-instance v0, Lgbase_okhttp3/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lgbase_okhttp3/RequestBody$2;-><init>(Lgbase_okhttp3/MediaType;I[BI)V

    return-object v0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lgbase_okhttp3/MediaType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lgbase_okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
