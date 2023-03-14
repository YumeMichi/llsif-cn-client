.class public Lcom/bytedance/applog/p1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/bytedance/applog/t1;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "can\'t find event verify, should compile with ET"

    const-string v1, "com.bytedance.applog.et_verify.EventVerify"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "inst"

    const/4 v4, 0x0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/bytedance/applog/t1;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/bytedance/applog/t1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-object v1, v2

    :goto_1
    invoke-static {v0, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_2
    sput-object v1, Lcom/bytedance/applog/p1;->a:Lcom/bytedance/applog/t1;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/p1;->a:Lcom/bytedance/applog/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/t1;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/p1;->a:Lcom/bytedance/applog/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/applog/t1;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
