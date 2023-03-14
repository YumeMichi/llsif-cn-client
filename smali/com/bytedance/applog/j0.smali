.class public Lcom/bytedance/applog/j0;
.super Lcom/bytedance/applog/t;
.source ""


# instance fields
.field public final e:Lcom/bytedance/applog/x;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/x;Lcom/bytedance/applog/y;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p2}, Lcom/bytedance/applog/t;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/bytedance/applog/j0;->e:Lcom/bytedance/applog/x;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 9

    iget-object v0, p0, Lcom/bytedance/applog/j0;->e:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v1, "bd_did"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "install_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ssid"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v1, v4}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v5, v6}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v4}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    cmp-long v2, v7, v5

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    move-wide v5, v7

    :goto_0
    invoke-virtual {p1, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
