.class public Lcom/bytedance/applog/z1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/z1$b;,
        Lcom/bytedance/applog/z1$c;
    }
.end annotation


# static fields
.field public static a:Lcom/bytedance/applog/z1$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/applog/z1$b$a;->a:Lcom/bytedance/applog/z1$b;

    .line 2
    sput-object v0, Lcom/bytedance/applog/z1;->a:Lcom/bytedance/applog/z1$c;

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/applog/z1;->a:Lcom/bytedance/applog/z1$c;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/z1$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/applog/z1;->a:Lcom/bytedance/applog/z1$c;

    const-string v1, "Logger"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/applog/z1$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
