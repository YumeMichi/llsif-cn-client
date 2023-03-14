.class public Lcom/bytedance/applog/v0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/v0$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/v0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/applog/v0$h<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/v0;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/v0;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/v0$e;->a:Lcom/bytedance/applog/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/applog/v0$e;->a:Lcom/bytedance/applog/v0;

    const-string v1, "udid"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/v0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/bytedance/applog/v0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-static {p1}, Lcom/bytedance/applog/y1;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Lcom/bytedance/applog/y1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/v0$e;->a:Lcom/bytedance/applog/v0;

    const-string v1, "udid"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/applog/v0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
