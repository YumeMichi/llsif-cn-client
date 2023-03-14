.class public Lcom/bytedance/applog/j1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/k1;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/k1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/j1;->a:Lcom/bytedance/applog/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/applog/j1;->a:Lcom/bytedance/applog/k1;

    .line 1
    iget-object v2, v2, Lcom/bytedance/applog/k1;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "openudid"

    aput-object v3, v2, v0

    const-string v3, "clientudid"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "serial_number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "sim_serial_number"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "udid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "device_id"

    aput-object v4, v2, v3

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lcom/bytedance/applog/j1;->a:Lcom/bytedance/applog/k1;

    iget-object v7, p0, Lcom/bytedance/applog/j1;->a:Lcom/bytedance/applog/k1;

    .line 3
    iget-object v7, v7, Lcom/bytedance/applog/k1;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v7, v5}, Lcom/bytedance/applog/k1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 6
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_1
    return-void
.end method
