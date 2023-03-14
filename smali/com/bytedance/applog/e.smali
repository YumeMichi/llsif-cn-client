.class public Lcom/bytedance/applog/e;
.super Lcom/bytedance/applog/f;
.source ""


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/applog/f;-><init>(Lcom/bytedance/applog/h;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/y;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 3
    iget-object v4, v4, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/applog/UriConfig;->getActiveUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v5, v2}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/applog/r0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "U SHALL NOT PASS!"

    .line 5
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iput-boolean v2, p0, Lcom/bytedance/applog/f;->e:Z

    :cond_2
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "activator"

    return-object v0
.end method

.method public e()[J
    .locals 1

    sget-object v0, Lcom/bytedance/applog/k;->f:[J

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method
