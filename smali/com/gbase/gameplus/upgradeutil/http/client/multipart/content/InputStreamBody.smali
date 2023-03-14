.class public Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;
.super Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;
.source "InputStreamBody.java"


# instance fields
.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;

.field private length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 6

    const-string v4, "no_name"

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 6

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p5}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    .line 26
    iput-object p4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->filename:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->length:J

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->length:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 v0, 0x1000

    .line 47
    :try_start_0
    new-array v0, v0, [B

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v4, v3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 52
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
