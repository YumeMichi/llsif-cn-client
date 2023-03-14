.class public Lcom/geetest/sdk/ac;
.super Ljava/lang/Object;
.source "GeeLogger.java"


# static fields
.field private static a:Lcom/geetest/sdk/aj;

.field private static b:Lcom/geetest/sdk/ae;

.field static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 2

    .line 2
    sget-object v0, Lcom/geetest/sdk/ac;->b:Lcom/geetest/sdk/ae;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/geetest/sdk/ae;->a()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please initialize Logan first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/geetest/sdk/am;)V
    .locals 6

    const-string v0, ""

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 12
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v2, v0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 17
    :goto_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {p0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fileDate"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appId"

    .line 20
    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "unionId"

    .line 21
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceId"

    .line 22
    invoke-interface {v1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "buildVersion"

    .line 23
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appVersion"

    .line 24
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "platform"

    const-string p3, "1"

    .line 25
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "X-AUTH-KEY"

    const-string p3, "191254678"

    .line 26
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p1, p0, v1, p5}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/geetest/sdk/am;)V

    return-void
.end method

.method public static a(Lcom/geetest/sdk/ad;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/geetest/sdk/ae;->a(Lcom/geetest/sdk/ad;)Lcom/geetest/sdk/ae;

    move-result-object p0

    sput-object p0, Lcom/geetest/sdk/ac;->b:Lcom/geetest/sdk/ae;

    return-void
.end method

.method public static a(Lcom/geetest/sdk/aj;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/geetest/sdk/ac;->a:Lcom/geetest/sdk/aj;

    return-void
.end method

.method static a(Ljava/lang/String;I)V
    .locals 1

    .line 38
    sget-object v0, Lcom/geetest/sdk/ac;->a:Lcom/geetest/sdk/aj;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p0, p1}, Lcom/geetest/sdk/aj;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/geetest/sdk/am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/geetest/sdk/am;",
            ")V"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/geetest/sdk/ac;->b:Lcom/geetest/sdk/ae;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/geetest/sdk/an;

    invoke-direct {v0}, Lcom/geetest/sdk/an;-><init>()V

    .line 32
    invoke-virtual {v0, p0}, Lcom/geetest/sdk/an;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p3}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/am;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/geetest/sdk/an;->a(Ljava/util/Map;)V

    .line 35
    sget-object p0, Lcom/geetest/sdk/ac;->b:Lcom/geetest/sdk/ae;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p0, p2, v0}, Lcom/geetest/sdk/ae;->a([Ljava/lang/String;Lcom/geetest/sdk/ao;)V

    return-void

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please initialize Logan first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Z)V
    .locals 0

    .line 37
    sput-boolean p0, Lcom/geetest/sdk/ac;->c:Z

    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/ac;->b:Lcom/geetest/sdk/ae;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/geetest/sdk/ae;->a(Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please initialize Logan first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
