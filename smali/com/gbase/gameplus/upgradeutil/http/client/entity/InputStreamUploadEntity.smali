.class public Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamUploadEntity.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/http/client/entity/UploadEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

.field private final content:Ljava/io/InputStream;

.field private final length:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    .line 25
    iput-wide p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->length:J

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCallBackHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_8

    .line 46
    iget-object v2, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    const/16 v3, 0x800

    .line 48
    :try_start_0
    new-array v3, v3, [B

    .line 50
    iget-wide v4, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "cancel"

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-gez v11, :cond_2

    .line 52
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v7, :cond_6

    .line 53
    invoke-virtual {v0, v3, v10, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    iget-wide v8, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    int-to-long v4, v4

    add-long/2addr v8, v4

    iput-wide v8, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    .line 55
    iget-object v4, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz v4, :cond_0

    .line 56
    iget-object v11, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    iget-wide v4, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const-wide/16 v8, 0x1

    add-long v12, v4, v8

    iget-wide v14, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    iget-wide v4, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->length:J

    :goto_1
    cmp-long v11, v4, v8

    if-lez v11, :cond_6

    const-wide/16 v11, 0x800

    .line 65
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v2, v3, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-ne v11, v7, :cond_3

    goto :goto_3

    .line 69
    :cond_3
    invoke-virtual {v0, v3, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v11, v11

    sub-long/2addr v4, v11

    .line 71
    iget-wide v13, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    .line 72
    iget-object v11, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz v11, :cond_5

    .line 73
    iget-object v12, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    iget-wide v13, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v7, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/16 v17, 0x0

    move-wide v15, v7

    invoke-interface/range {v12 .. v17}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 74
    :cond_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    goto :goto_1

    .line 79
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 80
    iget-object v0, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_7

    .line 81
    iget-object v3, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    iget-wide v4, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v6, v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v8, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_7
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 44
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output stream may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
