.class public abstract Lgbase_okhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .line 183
    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->contentType()Lgbase_okhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v1, Lgbase_okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lgbase_okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lgbase_okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public static create(Lgbase_okhttp3/MediaType;JLgbase_okio/BufferedSource;)Lgbase_okhttp3/ResponseBody;
    .locals 1
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 218
    new-instance v0, Lgbase_okhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lgbase_okhttp3/ResponseBody$1;-><init>(Lgbase_okhttp3/MediaType;JLgbase_okio/BufferedSource;)V

    return-object v0

    .line 217
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lgbase_okhttp3/MediaType;Ljava/lang/String;)Lgbase_okhttp3/ResponseBody;
    .locals 2
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    sget-object v0, Lgbase_okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Lgbase_okhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lgbase_okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object p0

    .line 204
    :cond_0
    new-instance v1, Lgbase_okio/Buffer;

    invoke-direct {v1}, Lgbase_okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lgbase_okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lgbase_okio/Buffer;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lgbase_okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lgbase_okhttp3/ResponseBody;->create(Lgbase_okhttp3/MediaType;JLgbase_okio/BufferedSource;)Lgbase_okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lgbase_okhttp3/MediaType;[B)Lgbase_okhttp3/ResponseBody;
    .locals 3
    .param p0    # Lgbase_okhttp3/MediaType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 210
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->write([B)Lgbase_okio/Buffer;

    move-result-object v0

    .line 211
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lgbase_okhttp3/ResponseBody;->create(Lgbase_okhttp3/MediaType;JLgbase_okio/BufferedSource;)Lgbase_okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->source()Lgbase_okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 134
    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->source()Lgbase_okio/BufferedSource;

    move-result-object v2

    .line 137
    :try_start_0
    invoke-interface {v2}, Lgbase_okio/BufferedSource;->readByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {v2}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 141
    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    .line 139
    invoke-static {v2}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 131
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3

    .line 158
    iget-object v0, p0, Lgbase_okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Lgbase_okhttp3/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->source()Lgbase_okio/BufferedSource;

    move-result-object v1

    invoke-direct {p0}, Lgbase_okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgbase_okhttp3/ResponseBody$BomAwareReader;-><init>(Lgbase_okio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lgbase_okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->source()Lgbase_okio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lgbase_okhttp3/MediaType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract source()Lgbase_okio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->source()Lgbase_okio/BufferedSource;

    move-result-object v0

    .line 175
    :try_start_0
    invoke-direct {p0}, Lgbase_okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lgbase_okhttp3/internal/Util;->bomAwareCharset(Lgbase_okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1}, Lgbase_okio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
