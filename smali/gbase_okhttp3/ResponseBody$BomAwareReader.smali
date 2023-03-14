.class final Lgbase_okhttp3/ResponseBody$BomAwareReader;
.super Ljava/io/Reader;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BomAwareReader"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private delegate:Ljava/io/Reader;

.field private final source:Lgbase_okio/BufferedSource;


# direct methods
.method constructor <init>(Lgbase_okio/BufferedSource;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 241
    iput-object p1, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->source:Lgbase_okio/BufferedSource;

    .line 242
    iput-object p2, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->closed:Z

    .line 258
    iget-object v0, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->close()V

    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-boolean v0, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->closed:Z

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->source:Lgbase_okio/BufferedSource;

    iget-object v1, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lgbase_okhttp3/internal/Util;->bomAwareCharset(Lgbase_okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v2}, Lgbase_okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lgbase_okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    move-object v0, v1

    .line 253
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    .line 246
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
