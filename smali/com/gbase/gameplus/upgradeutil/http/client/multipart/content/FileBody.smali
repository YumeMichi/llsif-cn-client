.class public Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;
.super Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;
.source "FileBody.java"


# instance fields
.field private final charset:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "application/octet-stream"

    .line 51
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 28
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    if-eqz p2, :cond_0

    .line 30
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    .line 34
    :goto_0
    iput-object p4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->charset:Ljava/lang/String;

    return-void

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 64
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1000

    .line 65
    :try_start_1
    new-array v0, v0, [B

    .line 67
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 68
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v5, v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 70
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v2, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
