.class public final Lcom/bytedance/applog/h2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:I = 0x2

.field public static b:Lcom/bytedance/applog/i2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/applog/i2$a;

    invoke-direct {v0}, Lcom/bytedance/applog/i2$a;-><init>()V

    .line 1
    sput-object v0, Lcom/bytedance/applog/h2;->b:Lcom/bytedance/applog/i2;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/applog/h2;->b:Lcom/bytedance/applog/i2;

    if-eqz v0, :cond_0

    sget v1, Lcom/bytedance/applog/h2;->a:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    check-cast v0, Lcom/bytedance/applog/i2$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/bytedance/applog/i2$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/bytedance/applog/h2;->b:Lcom/bytedance/applog/i2;

    if-eqz v0, :cond_0

    sget v1, Lcom/bytedance/applog/h2;->a:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    check-cast v0, Lcom/bytedance/applog/i2$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/applog/i2$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
