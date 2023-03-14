.class public Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;
.implements Lcom/gbase/gameplus/upgradeutil/http/client/entity/UploadEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;
    }
.end annotation


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private final boundary:Ljava/lang/String;

.field private callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

.field private final charset:Ljava/nio/charset/Charset;

.field private contentType:Lorg/apache/http/Header;

.field private volatile dirty:Z

.field private length:J

.field private final multipart:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

.field private multipartSubtype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 107
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;-><init>(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;-><init>(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    const-string v0, "form-data"

    .line 110
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->generateBoundary()Ljava/lang/String;

    move-result-object p2

    .line 81
    :cond_0
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 83
    sget-object p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    sget-object p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    .line 86
    new-instance p2, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

    iget-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;)V

    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipart:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

    .line 87
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    iget-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    .line 89
    invoke-virtual {p0, p2, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Type"

    invoke-direct {p1, p3, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->dirty:Z

    return-void
.end method


# virtual methods
.method public addPart(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipart:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->addBodyPart(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;)V

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->dirty:Z

    return-void
.end method

.method public addPart(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;-><init>(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->addPart(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;Ljava/lang/String;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;

    invoke-direct {v0, p1, p2, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;-><init>(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->addPart(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;)V

    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateBoundary()Ljava/lang/String;
    .locals 6

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xb

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 141
    sget-object v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->dirty:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipart:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->length:J

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->dirty:Z

    .line 182
    :cond_0
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->length:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipart:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;

    .line 161
    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->getBody()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCallBackHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    iput-object p1, v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public setMultipartSubtype(Ljava/lang/String;)V
    .locals 2

    .line 116
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipart:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->setSubType(Ljava/lang/String;)V

    .line 118
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-direct {p1, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->totalLength:J

    .line 208
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->multipart:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v0, p1, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeTo(Ljava/io/OutputStream;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;)V

    return-void
.end method
