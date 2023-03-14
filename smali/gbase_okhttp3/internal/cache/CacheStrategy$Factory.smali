.class public Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lgbase_okhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lgbase_okhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 142
    iput-wide p1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    .line 143
    iput-object p3, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    .line 144
    iput-object p4, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    if-eqz p4, :cond_5

    .line 147
    invoke-virtual {p4}, Lgbase_okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 148
    invoke-virtual {p4}, Lgbase_okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 149
    invoke-virtual {p4}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object p1

    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1}, Lgbase_okhttp3/Headers;->size()I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_5

    .line 151
    invoke-virtual {p1, p2}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p4

    .line 152
    invoke-virtual {p1, p2}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    .line 153
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-static {v1}, Lgbase_okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 155
    iput-object v1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    .line 156
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-static {v1}, Lgbase_okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    .line 158
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-static {v1}, Lgbase_okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 160
    iput-object v1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    .line 161
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    iput-object v1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    .line 163
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 164
    invoke-static {v1, v0}, Lgbase_okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private cacheResponseAge()J
    .locals 9

    .line 302
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 303
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 305
    :cond_0
    iget v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v3, v3

    .line 306
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 308
    :cond_1
    iget-wide v3, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v5, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v5, v3, v5

    .line 309
    iget-wide v7, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private computeFreshnessLifetime()J
    .locals 7

    .line 273
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    invoke-virtual {v0}, Lgbase_okhttp3/Response;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 275
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 276
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 280
    :goto_0
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v3, v5, v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    move-wide v1, v3

    :cond_2
    return-wide v1

    .line 282
    :cond_3
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    .line 283
    invoke-virtual {v0}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 288
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 291
    :goto_1
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    .line 292
    div-long v1, v3, v0

    :cond_5
    return-wide v1
.end method

.method private getCandidate()Lgbase_okhttp3/internal/cache/CacheStrategy;
    .locals 13

    .line 187
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-direct {v0, v2, v1}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    invoke-virtual {v0}, Lgbase_okhttp3/Response;->handshake()Lgbase_okhttp3/Handshake;

    move-result-object v0

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-direct {v0, v2, v1}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v0

    .line 199
    :cond_1
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-static {v0, v2}, Lgbase_okhttp3/internal/cache/CacheStrategy;->isCacheable(Lgbase_okhttp3/Response;Lgbase_okhttp3/Request;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-direct {v0, v2, v1}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v0

    .line 203
    :cond_2
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->noCache()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-static {v2}, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lgbase_okhttp3/Request;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    .line 208
    :cond_3
    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    invoke-virtual {v2}, Lgbase_okhttp3/Response;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Lgbase_okhttp3/CacheControl;->immutable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    invoke-direct {v0, v1, v2}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v0

    .line 213
    :cond_4
    invoke-direct {p0}, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v3

    .line 214
    invoke-direct {p0}, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v5

    .line 216
    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 217
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 221
    :cond_5
    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->minFreshSeconds()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_6

    .line 222
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->minFreshSeconds()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_0

    :cond_6
    move-wide v11, v9

    .line 226
    :goto_0
    invoke-virtual {v2}, Lgbase_okhttp3/CacheControl;->mustRevalidate()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v7

    if-eq v7, v8, :cond_7

    .line 227
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 230
    :cond_7
    invoke-virtual {v2}, Lgbase_okhttp3/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_a

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_a

    .line 231
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    invoke-virtual {v0}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_8

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    .line 233
    invoke-virtual {v0, v2, v5}, Lgbase_okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;

    :cond_8
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_9

    .line 236
    invoke-direct {p0}, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    .line 237
    invoke-virtual {v0, v2, v3}, Lgbase_okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;

    .line 239
    :cond_9
    new-instance v2, Lgbase_okhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v0}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v2

    .line 246
    :cond_a
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_b

    const-string v2, "If-None-Match"

    goto :goto_1

    .line 249
    :cond_b
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 252
    :cond_c
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 254
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 259
    :goto_1
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-virtual {v1}, Lgbase_okhttp3/Request;->headers()Lgbase_okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Headers;->newBuilder()Lgbase_okhttp3/Headers$Builder;

    move-result-object v1

    .line 260
    sget-object v3, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {v3, v1, v2, v0}, Lgbase_okhttp3/internal/Internal;->addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->newBuilder()Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v1}, Lgbase_okhttp3/Headers$Builder;->build()Lgbase_okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Request$Builder;->headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v0

    .line 265
    new-instance v1, Lgbase_okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    invoke-direct {v1, v0, v2}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v1

    .line 256
    :cond_d
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-direct {v0, v2, v1}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v0

    .line 205
    :cond_e
    :goto_2
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-direct {v0, v2, v1}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    return-object v0
.end method

.method private static hasConditions(Lgbase_okhttp3/Request;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    .line 327
    invoke-virtual {p0, v0}, Lgbase_okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lgbase_okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lgbase_okhttp3/Response;

    invoke-virtual {v0}, Lgbase_okhttp3/Response;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public get()Lgbase_okhttp3/internal/cache/CacheStrategy;
    .locals 2

    .line 174
    invoke-direct {p0}, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lgbase_okhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    .line 176
    iget-object v1, v0, Lgbase_okhttp3/internal/cache/CacheStrategy;->networkRequest:Lgbase_okhttp3/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->request:Lgbase_okhttp3/Request;

    invoke-virtual {v1}, Lgbase_okhttp3/Request;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lgbase_okhttp3/internal/cache/CacheStrategy;-><init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    :cond_0
    return-object v0
.end method