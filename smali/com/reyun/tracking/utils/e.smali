.class public Lcom/reyun/tracking/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    if-nez p0, :cond_0

    return-wide p3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_default_"

    invoke-static {p0, p1, p2, v0}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v0

    new-instance v7, Lcom/reyun/tracking/utils/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/reyun/tracking/utils/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/reyun/tracking/utils/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/reyun/tracking/utils/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
