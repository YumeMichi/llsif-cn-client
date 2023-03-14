.class Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;
.super Ljava/lang/Object;
.source "GLDownloadRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 91
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "OkHttpGLDownloadRequest"

    const-string p2, "download failed"

    .line 92
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    .line 97
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

    const/16 p2, -0x64

    invoke-virtual {p1, p2, v0}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->onFailureOnUI(ILjava/util/Map;)V

    return-void

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    :try_start_1
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 104
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 105
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    .line 107
    new-array v3, v3, [B

    .line 108
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 109
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 112
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 113
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 114
    iget-object p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;

    invoke-virtual {p2, v6, v0}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->onSuccessOnUI(ILjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 115
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p2

    .line 101
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 115
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_2
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OkHttpGLDownloadRequest"

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method
