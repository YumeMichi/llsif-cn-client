.class public Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;
.super Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;
.source "StringBody.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "text/plain"

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    const-string p2, "UTF-8"

    .line 65
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 67
    :cond_0
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->content:[B

    .line 68
    iput-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->charset:Ljava/nio/charset/Charset;

    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "text/plain"

    .line 82
    invoke-direct {p0, p1, v0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 25
    :try_start_0
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;

    invoke-direct {v0, p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Charset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 3

    .line 100
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->content:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "8bit"

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

    .line 109
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v1, 0x1000

    .line 110
    new-array v1, v1, [B

    .line 112
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v5, v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 115
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v2, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 107
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
