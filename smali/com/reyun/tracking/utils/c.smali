.class public Lcom/reyun/tracking/utils/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Runnable;


# direct methods
.method static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/utils/c;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/reyun/tracking/a/j;)Ljava/lang/String;
    .locals 1

    const-string p1, "pkgInfo"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "https://log.reyun.com/receive/pkginfo"

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://log.trackingio.com/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .locals 4

    sget-object v0, Lcom/reyun/tracking/utils/c;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/reyun/tracking/a/i;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/reyun/tracking/utils/d;

    invoke-direct {v1}, Lcom/reyun/tracking/utils/d;-><init>()V

    sput-object v1, Lcom/reyun/tracking/utils/c;->a:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V
    .locals 2

    sget-boolean p0, Lcom/reyun/tracking/a/i;->d:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x1a7f

    const-string v0, "slog.trackingio.com"

    invoke-static {v0, p0}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;I)Lcom/reyun/tracking/utils/w;

    move-result-object p0

    const/4 v0, 0x0

    new-instance v1, Lcom/reyun/tracking/utils/ab;

    invoke-direct {v1, p2, p1}, Lcom/reyun/tracking/utils/ab;-><init>(Lcom/reyun/tracking/utils/p;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://log.trackingio.com/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/reyun/tracking/utils/m;->a(Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object p0

    :goto_0
    invoke-static {p3}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/reyun/tracking/utils/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V
    .locals 0

    invoke-static {p2, p0}, Lcom/reyun/tracking/a/h;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-static {p2, p0}, Lcom/reyun/tracking/a/h;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-boolean p0, Lcom/reyun/tracking/a/i;->d:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x1a7f

    const-string p3, "slog.trackingio.com"

    invoke-static {p3, p0}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;I)Lcom/reyun/tracking/utils/w;

    move-result-object p0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/reyun/tracking/utils/ab;

    invoke-direct {p3, p4, p1}, Lcom/reyun/tracking/utils/ab;-><init>(Lcom/reyun/tracking/utils/p;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p5}, Lcom/reyun/tracking/utils/c;->a(Ljava/lang/String;Lcom/reyun/tracking/a/j;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3, p4}, Lcom/reyun/tracking/utils/m;->a(Ljava/lang/String;Ljava/lang/String;ILcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object p0

    :goto_0
    invoke-static {p5}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/reyun/tracking/utils/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/reyun/tracking/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V

    invoke-static {}, Lcom/reyun/tracking/utils/c;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V
    .locals 3

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p0}, Lcom/reyun/tracking/a/h;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-static {v2, p0}, Lcom/reyun/tracking/a/h;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    sget-boolean p0, Lcom/reyun/tracking/a/i;->d:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x1a7f

    const-string v0, "slog.trackingio.com"

    invoke-static {v0, p0}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;I)Lcom/reyun/tracking/utils/w;

    move-result-object p0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/reyun/tracking/utils/ab;

    invoke-direct {v0, p3, p1}, Lcom/reyun/tracking/utils/ab;-><init>(Lcom/reyun/tracking/utils/p;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://log.trackingio.com/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/reyun/tracking/utils/m;->a(Ljava/lang/String;Ljava/lang/String;ILcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object p0

    :goto_1
    invoke-static {p4}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/reyun/tracking/utils/c;->a()V

    return-void
.end method
