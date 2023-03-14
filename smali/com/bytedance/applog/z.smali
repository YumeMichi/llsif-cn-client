.class public Lcom/bytedance/applog/z;
.super Lcom/bytedance/applog/t;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/applog/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/y;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/applog/t;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/applog/z;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/applog/z;->f:Lcom/bytedance/applog/y;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/applog/z;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    invoke-static {p1, v2, v1}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcc_mnc"

    invoke-static {p1, v1, v0}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/z;->f:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 2
    check-cast v0, Lcom/bytedance/applog/l1;

    invoke-virtual {v0}, Lcom/bytedance/applog/l1;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientudid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/z;->f:Lcom/bytedance/applog/y;

    .line 3
    iget-object v0, v0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 4
    check-cast v0, Lcom/bytedance/applog/l1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/l1;->a(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "openudid"

    invoke-static {p1, v2, v0}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/z;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/a0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "google_aid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return v1
.end method
