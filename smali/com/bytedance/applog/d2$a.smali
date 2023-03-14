.class public Lcom/bytedance/applog/d2$a;
.super Lcom/bytedance/applog/c2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/applog/c2<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/bytedance/applog/d2;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/d2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/d2$a;->b:Lcom/bytedance/applog/d2;

    invoke-direct {p0}, Lcom/bytedance/applog/c2;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/applog/d2$a;->b:Lcom/bytedance/applog/d2;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/d2;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/applog/f1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
