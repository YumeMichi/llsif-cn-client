.class public Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpRequest.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private method:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field private uriBuilder:Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

.field private uriCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->method:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->method:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 40
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setURI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/net/URI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->method:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 46
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriBuilder:Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    return-object p0
.end method

.method public addQueryStringParameter(Lorg/apache/http/NameValuePair;)Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriBuilder:Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    return-object p0
.end method

.method public addQueryStringParams(Ljava/util/List;)Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 62
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriBuilder:Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 162
    invoke-super {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;

    .line 163
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 164
    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    .line 156
    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->method:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCharsetFromHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1

    const-string v0, "UTF-8"

    .line 121
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriBuilder:Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;->build(Ljava/nio/charset/Charset;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public setRequestParams(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 70
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    .line 76
    iget-boolean v2, v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v2, :cond_1

    .line 77
    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;

    .line 84
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_3
    return-void
.end method

.method public setRequestParams(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 90
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;

    .line 96
    iget-boolean v2, v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v2, :cond_1

    .line 97
    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;

    .line 104
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 106
    instance-of v0, p1, Lcom/gbase/gameplus/upgradeutil/http/client/entity/UploadEntity;

    if-eqz v0, :cond_3

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/http/client/entity/UploadEntity;

    invoke-interface {v0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/UploadEntity;->setCallBackHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V

    .line 109
    :cond_3
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_4
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriBuilder:Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 1

    .line 132
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->uriBuilder:Lcom/gbase/gameplus/upgradeutil/http/client/util/URIBuilder;

    return-void
.end method
