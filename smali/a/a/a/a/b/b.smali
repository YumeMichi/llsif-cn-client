.class public La/a/a/a/b/b;
.super Ljava/lang/Object;
.source "DYApiManager.java"


# static fields
.field public static a:La/a/a/a/b/b;


# instance fields
.field public b:Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La/a/a/a/b/b;
    .locals 2

    .line 1
    sget-object v0, La/a/a/a/b/b;->a:La/a/a/a/b/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, La/a/a/a/b/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, La/a/a/a/b/b;->a:La/a/a/a/b/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, La/a/a/a/b/b;

    invoke-direct {v1}, La/a/a/a/b/b;-><init>()V

    sput-object v1, La/a/a/a/b/b;->a:La/a/a/a/b/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, La/a/a/a/b/b;->a:La/a/a/a/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, La/a/a/a/b/b;->b:Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p2, p0, La/a/a/a/b/b;->b:Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 9
    iget-object v1, p2, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->appId:Ljava/lang/String;

    .line 10
    iget-object p2, p2, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->clientId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, v0

    move-object v1, p2

    .line 11
    :goto_0
    iput-object v0, p0, La/a/a/a/b/b;->b:Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;

    .line 12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_dy_opensdk_resp_code"

    .line 13
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "_dy_opensdk_resp_err_msg"

    .line 14
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_dy_opensdk_resp_open_id"

    .line 15
    invoke-virtual {v2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_dy_opensdk_resp_app_id"

    .line 16
    invoke-virtual {v2, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_dy_opensdk_resp_client_id"

    .line 17
    invoke-virtual {v2, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p1, v2}, La/a/a/a/c/b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method
