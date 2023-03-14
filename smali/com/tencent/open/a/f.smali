.class public Lcom/tencent/open/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/open/a/f;


# instance fields
.field private b:Lcom/tencent/open/utils/i;

.field private c:Lcom/tencent/open/a/a;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0}, Lcom/tencent/open/a/f;->b()V

    return-void
.end method

.method public static a()Lcom/tencent/open/a/f;
    .locals 2

    .line 55
    sget-object v0, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/tencent/open/a/f;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/tencent/open/a/f;

    invoke-direct {v1}, Lcom/tencent/open/a/f;-><init>()V

    sput-object v1, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    invoke-direct {v0}, Lcom/tencent/open/a/f;->c()V

    .line 63
    sget-object v0, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    return-object v0
.end method

.method private b()V
    .locals 5

    const-string v0, "openSDK_LOG.OpenHttpService"

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidSDK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object v3

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/open/utils/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    :try_start_0
    new-instance v2, Lcom/tencent/open/a/e;

    invoke-direct {v2, v1}, Lcom/tencent/open/a/e;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/a;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "initClient okHttp catch throwable"

    .line 46
    invoke-static {v0, v3, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "initClient okHttp catch error"

    .line 44
    invoke-static {v0, v3, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/a;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/tencent/open/a/b;

    invoke-direct {v0, v1}, Lcom/tencent/open/a/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/a;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/utils/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Common_HttpConnectionTimeout"

    .line 80
    invoke-virtual {v0, v1}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3a98

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/utils/i;

    const-string v2, "Common_SocketConnectionTimeout"

    invoke-virtual {v1, v2}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7530

    :cond_2
    int-to-long v2, v0

    int-to-long v0, v1

    .line 84
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/tencent/open/a/f;->a(JJ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/open/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "openSDK_LOG.OpenHttpService"

    const-string v1, "get."

    .line 138
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/open/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/open/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    if-eqz p2, :cond_4

    .line 111
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "UTF-8"

    .line 118
    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 127
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1

    .line 112
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tencent/open/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/tencent/open/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 165
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/open/a/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1

    .line 166
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/a;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/open/a/a;->a(JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/open/utils/i;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/utils/i;

    .line 73
    invoke-direct {p0}, Lcom/tencent/open/a/f;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/open/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "openSDK_LOG.OpenHttpService"

    const-string v1, "post data"

    .line 150
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/open/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1
.end method
