.class public final Lcom/bytedance/applog/a2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/a2$a;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/a2$a;->b:Lcom/bytedance/applog/a2$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/bytedance/applog/a2;->b(Landroid/content/Context;)Lcom/bytedance/applog/a2$a;

    move-result-object p0

    .line 1
    sget-object v0, Lcom/bytedance/applog/a2$a;->g:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_0

    const-string p0, "wifi"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/applog/a2$a;->j:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_1

    const-string p0, "wifi24ghz"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bytedance/applog/a2$a;->k:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_2

    const-string p0, "wifi5ghz"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bytedance/applog/a2$a;->e:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_3

    const-string p0, "2g"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/bytedance/applog/a2$a;->f:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_4

    const-string p0, "3g"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/bytedance/applog/a2$a;->l:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_5

    const-string p0, "3gh"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/bytedance/applog/a2$a;->m:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_6

    const-string p0, "3ghp"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/bytedance/applog/a2$a;->h:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_7

    const-string p0, "4g"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/bytedance/applog/a2$a;->i:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_8

    const-string p0, "5g"

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/bytedance/applog/a2$a;->d:Lcom/bytedance/applog/a2$a;

    if-ne p0, v0, :cond_9

    const-string p0, "mobile"

    goto :goto_0

    :cond_9
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getServiceState"

    :try_start_1
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getNrStatus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getNrState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bytedance/applog/a2$a;
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    sget-object p0, Lcom/bytedance/applog/a2$a;->g:Lcom/bytedance/applog/a2$a;

    return-object p0

    :cond_1
    if-nez v0, :cond_5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    sget-object p0, Lcom/bytedance/applog/a2$a;->d:Lcom/bytedance/applog/a2$a;

    return-object p0

    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/applog/a2;->a(Landroid/telephony/TelephonyManager;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/bytedance/applog/a2$a;->i:Lcom/bytedance/applog/a2$a;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/applog/a2$a;->h:Lcom/bytedance/applog/a2$a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/bytedance/applog/a2$a;->i:Lcom/bytedance/applog/a2$a;

    return-object p0

    :cond_4
    :pswitch_1
    sget-object p0, Lcom/bytedance/applog/a2$a;->f:Lcom/bytedance/applog/a2$a;

    return-object p0

    :cond_5
    sget-object p0, Lcom/bytedance/applog/a2$a;->d:Lcom/bytedance/applog/a2$a;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lcom/bytedance/applog/a2$a;->c:Lcom/bytedance/applog/a2$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    sget-object p0, Lcom/bytedance/applog/a2$a;->d:Lcom/bytedance/applog/a2$a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
