.class public Lcom/gbase/gameplus/upgradeutil/http/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;
    }
.end annotation


# instance fields
.field private bodyEntity:Lorg/apache/http/HttpEntity;

.field private bodyParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private fileParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field private queryStringParams:Ljava/util/List;
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 32
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->charset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 32
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->charset:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->charset:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3, p4}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;

    invoke-direct {v1, p2, p3, p4}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 247
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v7, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBodyParameter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 199
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addBodyParameter(Lorg/apache/http/NameValuePair;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;-><init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    invoke-direct {v1, p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;-><init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lorg/apache/http/Header;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    .line 108
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 109
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    new-instance v2, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    invoke-direct {v2, p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;-><init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lorg/apache/http/Header;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQueryStringParameter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 174
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addQueryStringParameter(Lorg/apache/http/NameValuePair;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;

    sget-object v2, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->charset:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;-><init>(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 280
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 283
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->addPart(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 285
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    invoke-virtual {v0, v3, v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;->addPart(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 296
    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->charset:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/BodyParamsEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()Lcom/gbase/gameplus/upgradeutil/task/Priority;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-object v0
.end method

.method public getQueryStringParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->queryStringParams:Ljava/util/List;

    return-object v0
.end method

.method public setBodyEntity(Lorg/apache/http/HttpEntity;)V
    .locals 1

    .line 254
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    .line 255
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 256
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 257
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->bodyParams:Ljava/util/List;

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 261
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Encoding"

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Type"

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;-><init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;-><init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lorg/apache/http/Header;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    .line 149
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 150
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->headers:Ljava/util/List;

    new-instance v2, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;-><init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lorg/apache/http/Header;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPriority(Lcom/gbase/gameplus/upgradeutil/task/Priority;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Transfer-Encoding"

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
