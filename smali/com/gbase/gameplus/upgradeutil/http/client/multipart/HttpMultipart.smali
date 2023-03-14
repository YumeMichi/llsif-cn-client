.class Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;
.super Ljava/lang/Object;
.source "HttpMultipart.java"


# static fields
.field private static final CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private final mode:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    .line 68
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 69
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    .line 113
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 96
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    sget-object p2, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 98
    iput-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->boundary:Ljava/lang/String;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    .line 100
    iput-object p4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->mode:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    return-void

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multipart boundary may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multipart subtype may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doWriteTo(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 166
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;

    .line 168
    invoke-virtual {p3, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    sget-object v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v4, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 172
    iget-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v6, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 173
    invoke-static {v0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 174
    iget-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 175
    sget-object v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v4, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 176
    iget-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v6, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 178
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->getHeader()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

    move-result-object v4

    .line 180
    sget-object v5, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart$1;->$SwitchMap$com$gbase$gameplus$upgradeutil$http$client$multipart$HttpMultipartMode:[I

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_1

    const/4 v3, 0x2

    if-eq v5, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "Content-Disposition"

    .line 191
    invoke-virtual {v4, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;->getField(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;

    move-result-object v3

    .line 192
    iget-object v5, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v5, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeField(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 193
    iget-wide v5, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v7, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v7, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v3

    sget-object v7, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v3, v7

    sget-object v7, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v3, v7

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 195
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->getBody()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    move-result-object v3

    invoke-interface {v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Content-Type"

    .line 197
    invoke-virtual {v4, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;->getField(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;

    move-result-object v3

    .line 198
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeField(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 199
    iget-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v6, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {v6, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v3

    sget-object v6, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    add-int/2addr v3, v6

    sget-object v6, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    add-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto :goto_2

    .line 182
    :cond_1
    invoke-virtual {v4}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;

    .line 183
    invoke-static {v4, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeField(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;Ljava/io/OutputStream;)V

    .line 184
    iget-wide v5, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v7, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v4}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v7, v4}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v4

    .line 185
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v4

    sget-object v7, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v4, v7

    sget-object v7, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v4, v7

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto :goto_1

    .line 206
    :cond_2
    :goto_2
    sget-object v3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 207
    iget-wide v3, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v5, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    if-eqz p4, :cond_3

    .line 210
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->getBody()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    move-result-object v2

    .line 211
    invoke-interface {v2, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->setCallBackInfo(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;)V

    .line 212
    invoke-interface {v2, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    .line 214
    :cond_3
    sget-object v2, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v2, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 215
    iget-wide v2, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto/16 :goto_0

    .line 169
    :cond_4
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "cancel"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_5
    sget-object p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 218
    iget-wide v1, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v1, v4

    iput-wide v1, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 219
    invoke-static {v0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 220
    iget-wide v1, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v1, v4

    iput-wide v1, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 221
    sget-object p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 222
    iget-wide v0, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 223
    sget-object p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 224
    iget-wide p1, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p4

    int-to-long v0, p4

    add-long/2addr p1, v0

    iput-wide p1, p3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 225
    invoke-virtual {p3, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    return-void
.end method

.method private doWriteTo(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;Z)V

    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 2

    .line 27
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 28
    new-instance p1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    return-object p1
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object p0

    .line 48
    invoke-static {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p1, p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object p0

    .line 42
    invoke-static {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private static writeField(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 54
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 56
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeField(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 62
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 63
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 64
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMode()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->mode:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 10

    .line 254
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;

    .line 255
    invoke-virtual {v5}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->getBody()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    move-result-object v5

    .line 256
    invoke-interface {v5}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getContentLength()J

    move-result-wide v8

    cmp-long v5, v8, v1

    if-ltz v5, :cond_0

    add-long/2addr v3, v8

    goto :goto_0

    :cond_0
    return-wide v6

    .line 263
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->mode:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 267
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long/2addr v3, v0

    return-wide v3

    :catch_0
    return-wide v6
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->mode:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;Z)V

    return-void
.end method
