.class abstract Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

.field private content:Ljava/io/InputStream;

.field private uncompressedLength:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    .line 33
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uncompressedLength:J

    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->decorate(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 44
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    throw v1
.end method


# virtual methods
.method abstract decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    return-object v0

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setCallBackHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    .line 86
    new-array v1, v1, [B

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    iget-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uploadedSize:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uploadedSize:J

    .line 91
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_0

    .line 92
    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    iget-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uncompressedLength:J

    iget-wide v6, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v1, "cancel"

    invoke-direct {p1, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 98
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz p1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    iget-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uncompressedLength:J

    iget-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_3
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
