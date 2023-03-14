.class public Lcom/geetest/sdk/ai;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static a:I = 0x1

.field public static b:Ljava/lang/String; = "GeeLogger"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/geetest/sdk/ai;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/geetest/sdk/ai;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
