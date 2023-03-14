.class public Lcom/bytedance/applog/g1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/g1$c;,
        Lcom/bytedance/applog/g1$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/applog/g1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/bytedance/applog/g1$c;

    invoke-direct {v0, v1}, Lcom/bytedance/applog/g1$c;-><init>(Lcom/bytedance/applog/g1$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/applog/g1$b;

    invoke-direct {v0, v1}, Lcom/bytedance/applog/g1$b;-><init>(Lcom/bytedance/applog/g1$a;)V

    :goto_0
    sput-object v0, Lcom/bytedance/applog/g1;->a:Lcom/bytedance/applog/g1$b;

    return-void
.end method
