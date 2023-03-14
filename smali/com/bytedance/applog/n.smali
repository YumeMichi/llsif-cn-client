.class public Lcom/bytedance/applog/n;
.super Lcom/bytedance/applog/f;
.source ""


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/applog/f;-><init>(Lcom/bytedance/applog/h;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 2
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getHeader()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->c()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/bytedance/applog/n;->f:I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    const/4 v4, 0x1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lcom/bytedance/applog/n$a;

    invoke-direct {v6, p0, v1}, Lcom/bytedance/applog/n$a;-><init>(Lcom/bytedance/applog/n;Lorg/json/JSONObject;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/applog/n0;->a(Lcom/bytedance/applog/h;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "up"

    return-object v0
.end method

.method public e()[J
    .locals 1

    const v0, 0xea60

    new-array v0, v0, [J

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method
