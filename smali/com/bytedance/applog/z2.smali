.class public final Lcom/bytedance/applog/z2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/q2;


# static fields
.field public static a:Ljava/lang/Object;

.field public static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "com.android.id.impl.IdProviderImpl"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/z2;->b:Ljava/lang/Class;

    sget-object v0, Lcom/bytedance/applog/z2;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/z2;->a:Ljava/lang/Object;

    sget-object v0, Lcom/bytedance/applog/z2;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getOAID"

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/z2;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;

    const-string v2, "Api#static reflect exception! "

    invoke-static {v2}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lcom/bytedance/applog/h2;->b:Lcom/bytedance/applog/i2;

    if-eqz v3, :cond_0

    sget v4, Lcom/bytedance/applog/h2;->a:I

    const/4 v5, 0x6

    if-gt v4, v5, :cond_0

    check-cast v3, Lcom/bytedance/applog/i2$a;

    invoke-virtual {v3, v1, v0, v2}, Lcom/bytedance/applog/i2$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/z2;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/z2;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/z2;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/applog/q2$a;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/bytedance/applog/q2$a;

    invoke-direct {v1}, Lcom/bytedance/applog/q2$a;-><init>()V

    sget-object v2, Lcom/bytedance/applog/z2;->c:Ljava/lang/reflect/Method;

    .line 1
    sget-object v3, Lcom/bytedance/applog/z2;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    :try_start_2
    iput-object p1, v1, Lcom/bytedance/applog/q2$a;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    .line 1
    sget-object p1, Lcom/bytedance/applog/z2;->b:Ljava/lang/Class;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bytedance/applog/z2;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bytedance/applog/z2;->c:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
