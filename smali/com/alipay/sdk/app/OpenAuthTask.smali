.class public final Lcom/alipay/sdk/app/OpenAuthTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/OpenAuthTask$b;,
        Lcom/alipay/sdk/app/OpenAuthTask$Callback;,
        Lcom/alipay/sdk/app/OpenAuthTask$BizType;
    }
.end annotation


# static fields
.field public static final Duplex:I = 0x1388

.field public static final NOT_INSTALLED:I = 0xfa1

.field public static final OK:I = 0x2328

.field public static final SYS_ERR:I = 0xfa0

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public static f:J = 0x0L

.field public static final g:I = 0x7a


# instance fields
.field public volatile a:Z

.field public final b:Landroid/app/Activity;

.field public c:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

.field public final d:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 2
    sput-wide v0, Lcom/alipay/sdk/app/OpenAuthTask;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->a:Z

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->d:Landroid/os/Handler;

    .line 10
    iput-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    .line 11
    invoke-static {}, Lcom/alipay/sdk/sys/b;->d()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/alipay/sdk/app/OpenAuthTask;)Lcom/alipay/sdk/app/OpenAuthTask$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->c:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    return-object p0
.end method

.method private a(JLjava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 157
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "startTime"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "session"

    .line 158
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    iget-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "package"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    .line 161
    invoke-static {p4}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->access$100(Lcom/alipay/sdk/app/OpenAuthTask$BizType;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appId"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "sdkVersion"

    const-string p2, "h.a.3.8.02"

    .line 163
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mqpURL"

    .line 164
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 166
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 132
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "alipays"

    .line 133
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platformapi"

    .line 134
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "startapp"

    .line 135
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 136
    invoke-static {p1}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->access$100(Lcom/alipay/sdk/app/OpenAuthTask$BizType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/alipay/sdk/app/OpenAuthTask$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "appClearTop"

    const-string v1, "false"

    .line 142
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "startMultApp"

    const-string v2, "YES"

    .line 143
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "missing bizType"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 167
    sget-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    if-eqz p0, :cond_0

    .line 170
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/sdk/app/OpenAuthTask$Callback;->onResult(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 172
    invoke-static {p0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Z)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p3

    const-string v9, "biz"

    .line 2
    iget-boolean v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->a:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->d:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$b;

    const/16 v3, 0xfa0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "\u8be5 OpenAuthTask \u5df2\u5728\u6267\u884c"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$b;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/OpenAuthTask$a;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    .line 6
    :cond_0
    iput-boolean v10, v7, Lcom/alipay/sdk/app/OpenAuthTask;->a:Z

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 10
    sget-wide v0, Lcom/alipay/sdk/app/OpenAuthTask;->f:J

    sub-long v0, v11, v0

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 11
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->d:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$b;

    const/16 v3, 0x1388

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "3s \u5185\u91cd\u590d\u652f\u4ed8"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$b;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/OpenAuthTask$a;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    .line 14
    :cond_1
    sput-wide v11, Lcom/alipay/sdk/app/OpenAuthTask;->f:J

    const-string v13, ""

    .line 17
    invoke-static {v13}, Lcom/alipay/sdk/app/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 20
    invoke-static {v0}, Lcom/alipay/sdk/util/l;->a(I)Ljava/lang/String;

    move-result-object v14

    .line 23
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 24
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mqpPkgName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mqpScene"

    const-string v2, "sdk"

    .line 25
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/data/a;->k()Ljava/util/List;

    move-result-object v2

    .line 31
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alipay/sdk/data/a;->g:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    .line 33
    :cond_2
    sget-object v2, Lcom/alipay/sdk/app/a;->d:Ljava/util/List;

    .line 38
    :cond_3
    iget-object v3, v7, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    invoke-static {v8, v3, v2}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/l$c;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_6

    .line 39
    invoke-virtual {v15, v8}, Lcom/alipay/sdk/util/l$c;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v15}, Lcom/alipay/sdk/util/l$c;->a()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v15, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_6

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0x7a

    if-ge v2, v3, :cond_4

    goto/16 :goto_4

    .line 68
    :cond_4
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ts_scheme"

    .line 69
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "mqpLoc"

    .line 71
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v2, "OpenAuthLocEx"

    .line 73
    invoke-static {v8, v9, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :goto_0
    invoke-direct {v7, v5, v1}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    sget-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Ljava/util/Map;

    iget-object v1, v7, Lcom/alipay/sdk/app/OpenAuthTask;->c:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-object v4, v14

    move-object/from16 v5, p3

    .line 86
    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask;->a(JLjava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    move-object/from16 v0, v17

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "JSONEx"

    .line 88
    invoke-static {v8, v9, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 90
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->d:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$b;

    const/16 v3, 0xfa0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "\u53c2\u6570\u9519\u8bef"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$b;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/OpenAuthTask$a;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    .line 95
    :cond_5
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "alipays"

    .line 96
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "platformapi"

    .line 97
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "startapp"

    .line 98
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "appId"

    const-string v3, "20001129"

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "payload"

    .line 100
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v0, v15, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "PgOpenStarting"

    .line 106
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9, v0, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v8, v14}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V

    .line 110
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    const-string v1, "StartWalletEx"

    .line 112
    invoke-static {v8, v9, v1, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v16

    .line 113
    :catchall_2
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->d:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$b;

    const/16 v3, 0xfa0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "\u4e1a\u52a1\u53c2\u6570\u9519\u8bef"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$b;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/OpenAuthTask$a;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    :cond_6
    :goto_4
    if-eqz p5, :cond_7

    .line 114
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mqpScheme"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mqpNotifyName"

    .line 115
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "landing"

    .line 116
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {v7, v5, v1}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v7, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5OpenAuthActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    new-array v2, v10, [Ljava/lang/Object;

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v16

    const-string v0, "https://render.alipay.com/p/s/i?scheme=%s"

    .line 122
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    .line 125
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {v8, v1}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    .line 127
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v16

    .line 131
    :cond_7
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->d:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$b;

    const/16 v3, 0xfa1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "\u652f\u4ed8\u5b9d\u672a\u5b89\u88c5\u6216\u7b7e\u540d\u9519\u8bef"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$b;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/OpenAuthTask$a;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Lcom/alipay/sdk/app/OpenAuthTask$Callback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/sdk/app/OpenAuthTask$Callback;",
            "Z)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/alipay/sdk/sys/a;

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oa-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iput-object p4, p0, Lcom/alipay/sdk/app/OpenAuthTask;->c:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->b:Landroid/app/Activity;

    iget-object p2, v6, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    const-string p3, ""

    invoke-static {p1, v6, p3, p2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method
