.class public Lgbase_okhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lgbase_okhttp3/RequestBody;

.field headers:Lgbase_okhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tag:Ljava/lang/Object;

.field url:Lgbase_okhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 109
    iput-object v0, p0, Lgbase_okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 110
    new-instance v0, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/Request$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/Request;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-object v0, p1, Lgbase_okhttp3/Request;->url:Lgbase_okhttp3/HttpUrl;

    iput-object v0, p0, Lgbase_okhttp3/Request$Builder;->url:Lgbase_okhttp3/HttpUrl;

    .line 115
    iget-object v0, p1, Lgbase_okhttp3/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lgbase_okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lgbase_okhttp3/Request;->body:Lgbase_okhttp3/RequestBody;

    iput-object v0, p0, Lgbase_okhttp3/Request$Builder;->body:Lgbase_okhttp3/RequestBody;

    .line 117
    iget-object v0, p1, Lgbase_okhttp3/Request;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lgbase_okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 118
    iget-object p1, p1, Lgbase_okhttp3/Request;->headers:Lgbase_okhttp3/Headers;

    invoke-virtual {p1}, Lgbase_okhttp3/Headers;->newBuilder()Lgbase_okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/Request$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;
    .locals 1

    .line 178
    iget-object v0, p0, Lgbase_okhttp3/Request$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public build()Lgbase_okhttp3/Request;
    .locals 2

    .line 256
    iget-object v0, p0, Lgbase_okhttp3/Request$Builder;->url:Lgbase_okhttp3/HttpUrl;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lgbase_okhttp3/Request;

    invoke-direct {v0, p0}, Lgbase_okhttp3/Request;-><init>(Lgbase_okhttp3/Request$Builder;)V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheControl(Lgbase_okhttp3/CacheControl;)Lgbase_okhttp3/Request$Builder;
    .locals 2

    .line 199
    invoke-virtual {p1}, Lgbase_okhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lgbase_okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 201
    :cond_0
    invoke-virtual {p0, v1, p1}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public delete()Lgbase_okhttp3/Request$Builder;
    .locals 1

    .line 221
    sget-object v0, Lgbase_okhttp3/internal/Util;->EMPTY_REQUEST:Lgbase_okhttp3/RequestBody;

    invoke-virtual {p0, v0}, Lgbase_okhttp3/Request$Builder;->delete(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;
    .locals 1
    .param p1    # Lgbase_okhttp3/RequestBody;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DELETE"

    .line 217
    invoke-virtual {p0, v0, p1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public get()Lgbase_okhttp3/Request$Builder;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lgbase_okhttp3/Request$Builder;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;
    .locals 1

    .line 166
    iget-object v0, p0, Lgbase_okhttp3/Request$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Request$Builder;
    .locals 0

    .line 189
    invoke-virtual {p1}, Lgbase_okhttp3/Headers;->newBuilder()Lgbase_okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/Request$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;
    .locals 2
    .param p2    # Lgbase_okhttp3/RequestBody;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 235
    invoke-static {p1}, Lgbase_okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 238
    invoke-static {p1}, Lgbase_okhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 241
    :cond_3
    :goto_1
    iput-object p1, p0, Lgbase_okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lgbase_okhttp3/Request$Builder;->body:Lgbase_okhttp3/RequestBody;

    return-object p0

    .line 234
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;
    .locals 1

    const-string v0, "PATCH"

    .line 229
    invoke-virtual {p0, v0, p1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public post(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;
    .locals 1

    const-string v0, "POST"

    .line 213
    invoke-virtual {p0, v0, p1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;
    .locals 1

    const-string v0, "PUT"

    .line 225
    invoke-virtual {p0, v0, p1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;
    .locals 1

    .line 183
    iget-object v0, p0, Lgbase_okhttp3/Request$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lgbase_okhttp3/Request$Builder;
    .locals 0

    .line 251
    iput-object p1, p0, Lgbase_okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lgbase_okhttp3/Request$Builder;->url:Lgbase_okhttp3/HttpUrl;

    return-object p0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    .line 137
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 139
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_1
    :goto_0
    invoke-static {p1}, Lgbase_okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p0, v0}, Lgbase_okhttp3/Request$Builder;->url(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Ljava/net/URL;)Lgbase_okhttp3/Request$Builder;
    .locals 3

    if-eqz p1, :cond_1

    .line 156
    invoke-static {p1}, Lgbase_okhttp3/HttpUrl;->get(Ljava/net/URL;)Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lgbase_okhttp3/Request$Builder;->url(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
