.class public Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;
.super Lorg/apache/http/entity/FileEntity;
.source "FileUploadEntity.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

.field private fileSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->fileSize:J

    return-void
.end method


# virtual methods
.method public setCallBackHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

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

    .line 26
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1000

    .line 27
    :try_start_1
    new-array v0, v0, [B

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 31
    iget-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->uploadedSize:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->uploadedSize:J

    .line 32
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_0

    .line 33
    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    iget-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v6, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 39
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz p1, :cond_3

    .line 40
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    iget-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v5, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_3
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

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
