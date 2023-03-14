.class public Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "BodyParamsEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private charset:Ljava/lang/String;

.field protected content:[B

.field private dirty:Z

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->dirty:Z

    const-string v0, "UTF-8"

    .line 20
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    :cond_0
    const-string p1, "application/x-www-form-urlencoded"

    .line 33
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->setContentType(Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->dirty:Z

    const-string v0, "UTF-8"

    .line 20
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 44
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    :cond_0
    const-string p2, "application/x-www-form-urlencoded"

    .line 46
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->setContentType(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->refreshContent()V

    return-void
.end method

.method private refreshContent()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->dirty:Z

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/util/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->content:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->dirty:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->dirty:Z

    return-object p0
.end method

.method public addParams(Ljava/util/List;)Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->dirty:Z

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->refreshContent()V

    .line 85
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->refreshContent()V

    .line 80
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->refreshContent()V

    .line 93
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
