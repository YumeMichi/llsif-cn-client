.class public Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;
.super Ljava/io/InputStream;
.source "ResponseStream.java"


# instance fields
.field private _directResult:Ljava/lang/String;

.field private baseResponse:Lorg/apache/http/HttpResponse;

.field private baseStream:Ljava/io/InputStream;

.field private charset:Ljava/lang/String;

.field private expiry:J

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "result may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    .line 32
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    .line 33
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->charset:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->requestUrl:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->expiry:J

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseResponse may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getBaseResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getBaseStream()Ljava/io/InputStream;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 155
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 161
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFile(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x1000

    .line 110
    new-array v0, v0, [B

    .line 112
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 117
    :goto_1
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->charset:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->requestUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->requestUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;

    iget-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->expiry:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->_directResult:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRequestMethod(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->requestMethod:Ljava/lang/String;

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 173
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
