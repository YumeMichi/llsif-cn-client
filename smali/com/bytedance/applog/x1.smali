.class public Lcom/bytedance/applog/x1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/bytedance/applog/ILogger;

.field public static b:Z

.field public static final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x4cc0ca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-lt v1, v2, :cond_0

    const v0, 0xe555b9

    :cond_0
    sput v0, Lcom/bytedance/applog/x1;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/applog/ILogger;)V
    .locals 1
    .param p1    # Lcom/bytedance/applog/ILogger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/bytedance/applog/x1;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    sput-boolean v0, Lcom/bytedance/applog/x1;->b:Z

    :goto_1
    sput-object p1, Lcom/bytedance/applog/x1;->a:Lcom/bytedance/applog/ILogger;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/x1;->a:Lcom/bytedance/applog/ILogger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/ILogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/bytedance/applog/x1;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "AppLog"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
