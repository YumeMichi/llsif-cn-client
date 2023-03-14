.class public final Lcom/bytedance/applog/f0;
.super Lcom/bytedance/applog/t;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/applog/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/x;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/t;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/applog/f0;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/applog/f0;->f:Lcom/bytedance/applog/x;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/f0;->f:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    .line 2
    iget-object v0, p0, Lcom/bytedance/applog/f0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/g2;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "oaid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
