.class public Lcom/greport/glog/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# static fields
.field private static final UPLOAD_READ_TIMEOUT:I = 0x3e8

.field private static final UPLOAD_WRITE_TIMEOUT:I = 0x2710

.field private static instance:Lcom/greport/glog/UploadManager;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private isUploading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/greport/glog/UploadManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/greport/glog/UploadManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/greport/glog/UploadManager;->doUploadForRetry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private doUpload(ILjava/lang/String;)V
    .locals 7

    const-string v0, "GLog"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/16 v4, 0x29a

    if-eq p1, v4, :cond_0

    .line 55
    :try_start_0
    new-instance v4, Ljava/net/URL;

    sget-object v5, Lcom/greport/glog/GLogConfig;->UPLOAD_URL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, v3

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 46
    :cond_0
    new-instance v4, Ljava/net/URL;

    sget-object v5, Lcom/greport/glog/GLogConfig;->UPLOAD_URL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/greport/glog/GLogConfig;->UPLOAD_URL_ANR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/greport/glog/util/Utils;->getAppIdFromMetaData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/greport/glog/GLogConfig;->UPLOAD_ERROR_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/greport/glog/util/Utils;->getAppIdFromMetaData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "POST"

    .line 60
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x2710

    .line 61
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x3e8

    .line 62
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 63
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 64
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Content-Type"

    const-string v3, "application/json; charset=UTF-8"

    .line 66
    invoke-virtual {v4, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/greport/glog/UploadManager;->getReportContent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-direct {p0, v1}, Lcom/greport/glog/UploadManager;->writeLocalTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportContent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 74
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 75
    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 77
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload returned:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_3

    const-string v1, "upload success"

    .line 81
    invoke-static {v0, v1}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/greport/glog/FileHelper;->removeRecordFilesAndClearSp(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "upload fail code :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "response message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/greport/glog/util/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_4

    .line 88
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-eqz v4, :cond_5

    .line 94
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v4

    .line 91
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 94
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    return-void

    :goto_4
    if-eqz v4, :cond_6

    .line 94
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    :cond_6
    iput-boolean v2, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    .line 97
    throw p1
.end method

.method private doUploadForRetry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "GLog"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 164
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "POST"

    .line 167
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 168
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3e8

    .line 169
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 170
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 171
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 172
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "Content-Type"

    const-string v4, "application/json; charset=UTF-8"

    .line 173
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploadRecord: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 183
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 184
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload returned:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v4, 0xc8

    if-ne p2, v4, :cond_0

    const-string p2, "upload success 200"

    .line 188
    invoke-static {v0, p2}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload fail:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/greport/glog/util/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 197
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    move v7, v2

    move-object v2, p1

    move p1, v7

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    :cond_2
    iput-boolean v1, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    move p1, v2

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v2

    goto :goto_5

    :catch_2
    move-exception p2

    :goto_2
    const/4 p1, 0x0

    .line 200
    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    :cond_3
    iput-boolean v1, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    :goto_4
    return p1

    :goto_5
    if-eqz p1, :cond_4

    .line 203
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    :cond_4
    iput-boolean v1, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    .line 206
    throw p2
.end method

.method private doUploadRetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 212
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    const/4 v0, 0x1

    .line 213
    new-array v2, v0, [I

    const/4 v0, 0x0

    aput v0, v2, v0

    .line 214
    new-instance v7, Lcom/greport/glog/UploadManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/greport/glog/UploadManager$1;-><init>(Lcom/greport/glog/UploadManager;[ILjava/lang/String;Ljava/lang/String;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    move-object v0, v6

    move-object v1, v7

    .line 229
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/greport/glog/UploadManager;
    .locals 2

    .line 237
    sget-object v0, Lcom/greport/glog/UploadManager;->instance:Lcom/greport/glog/UploadManager;

    if-nez v0, :cond_1

    .line 238
    sget-object v0, Lcom/greport/glog/UploadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    sget-object v1, Lcom/greport/glog/UploadManager;->instance:Lcom/greport/glog/UploadManager;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Lcom/greport/glog/UploadManager;

    invoke-direct {v1, p0}, Lcom/greport/glog/UploadManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/greport/glog/UploadManager;->instance:Lcom/greport/glog/UploadManager;

    .line 241
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 244
    :cond_1
    :goto_0
    sget-object p0, Lcom/greport/glog/UploadManager;->instance:Lcom/greport/glog/UploadManager;

    return-object p0
.end method

.method private getReportContent(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x29a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 286
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->getRecordDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->getAnrRecordDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->getErrorRecordDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    :goto_0
    invoke-direct {p0, p1}, Lcom/greport/glog/UploadManager;->writeWithoutFirstLineFistChar(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private upload(I)V
    .locals 2

    .line 260
    iget-boolean v0, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/util/NetworkChecker;->isOffline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/greport/glog/FileHelper;->getCanUploadExistsFile(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 273
    iput-boolean v1, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    invoke-direct {p0, p1, v1}, Lcom/greport/glog/UploadManager;->doUpload(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "GLog"

    const-string v0, "UploadManager->upload isUploading|offline return"

    .line 261
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private write(Ljava/io/OutputStreamWriter;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 329
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 331
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 335
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private writeLocalTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 340
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 342
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 343
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 344
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "local_timestamp"

    .line 346
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private writeWithoutFirstLineFistChar(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 303
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 307
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    .line 313
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "GLog"

    const-string v3, "-------------------------111"

    .line 317
    invoke-static {v2, v3}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "-------------------------222"

    .line 319
    invoke-static {v2, v3}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 322
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method doUpload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "GLog"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "POST"

    .line 110
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 111
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3e8

    .line 112
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 114
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 115
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Content-Type"

    const-string v5, "application/json; charset=UTF-8"

    .line 116
    invoke-virtual {v4, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 120
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-direct {p0, v6}, Lcom/greport/glog/UploadManager;->writeLocalTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uploadRecord: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 127
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 128
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", upload returned:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_0

    const-string v3, "upload success 200"

    .line 132
    invoke-static {v0, v3}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/greport/glog/UploadManager;->context:Landroid/content/Context;

    invoke-static {v3, p2, p3}, Lcom/greport/glog/FileHelper;->removeRecordFilesAndClearSp(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "upload fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1, p4}, Lcom/greport/glog/UploadManager;->doUploadRetry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v2

    goto :goto_4

    :catch_1
    move-exception p2

    .line 144
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p2, "exception message null"

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, p1, p4}, Lcom/greport/glog/UploadManager;->doUploadRetry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 152
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    :cond_3
    :goto_3
    iput-boolean v1, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    return-void

    :goto_4
    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    :cond_4
    iput-boolean v1, p0, Lcom/greport/glog/UploadManager;->isUploading:Z

    .line 155
    throw p1
.end method

.method uploadAnrRecordsIfNeeded()V
    .locals 1

    const/4 v0, 0x2

    .line 256
    invoke-direct {p0, v0}, Lcom/greport/glog/UploadManager;->upload(I)V

    return-void
.end method

.method uploadErrorRecordsIfNeeded()V
    .locals 1

    const/4 v0, 0x1

    .line 248
    invoke-direct {p0, v0}, Lcom/greport/glog/UploadManager;->upload(I)V

    return-void
.end method

.method uploadRecordsIfNeeded()V
    .locals 1

    const/16 v0, 0x29a

    .line 252
    invoke-direct {p0, v0}, Lcom/greport/glog/UploadManager;->upload(I)V

    return-void
.end method
