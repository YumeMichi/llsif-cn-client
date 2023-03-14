.class Lcom/tencent/open/utils/i$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/tencent/open/utils/i;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/i;Ljava/util/Map;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/tencent/open/utils/i$1;->b:Lcom/tencent/open/utils/i;

    iput-object p2, p0, Lcom/tencent/open/utils/i$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "openSDK_LOG.OpenConfig"

    .line 198
    :try_start_0
    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v1

    const-string v2, "https://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    iget-object v3, p0, Lcom/tencent/open/utils/i$1;->a:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Lcom/tencent/open/a/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: get config statusCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/tencent/open/a/g;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v2}, Lcom/tencent/open/utils/m;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/tencent/open/utils/i$1;->b:Lcom/tencent/open/utils/i;

    invoke-static {v2, v1}, Lcom/tencent/open/utils/i;->a(Lcom/tencent/open/utils/i;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "get config error "

    .line 204
    invoke-static {v0, v2, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/utils/i$1;->b:Lcom/tencent/open/utils/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/open/utils/i;->a(Lcom/tencent/open/utils/i;I)I

    return-void
.end method
