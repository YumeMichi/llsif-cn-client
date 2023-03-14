.class public abstract Lcom/bytedance/applog/v0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/v0$h;
    }
.end annotation


# instance fields
.field public a:Lcom/bytedance/applog/v0;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Lcom/bytedance/applog/v0$h<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 3
    iget-object v0, p0, Lcom/bytedance/applog/v0;->a:Lcom/bytedance/applog/v0;

    .line 4
    invoke-interface {p3}, Lcom/bytedance/applog/v0$h;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, p1}, Lcom/bytedance/applog/v0$h;->a(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p3, v1}, Lcom/bytedance/applog/v0$h;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    move-object p1, v1

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {p3, p1, p2, v0}, Lcom/bytedance/applog/v0$h;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Lcom/bytedance/applog/v0$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p3, p1}, Lcom/bytedance/applog/v0$h;->b(Ljava/lang/Object;)V

    :cond_1
    return-object p1

    :cond_2
    const/4 v0, 0x0

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    move-object p1, p2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p3, p1}, Lcom/bytedance/applog/v0$h;->a(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    invoke-interface {p3, p1, v1}, Lcom/bytedance/applog/v0$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    invoke-interface {p3, p1}, Lcom/bytedance/applog/v0$h;->b(Ljava/lang/Object;)V

    :cond_6
    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "agent == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/os/Handler;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/applog/v0;->a:Lcom/bytedance/applog/v0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/v0;->a(Landroid/os/Handler;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/applog/v0;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/v0;->a:Lcom/bytedance/applog/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/v0;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/v0$d;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/v0$d;-><init>(Lcom/bytedance/applog/v0;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/applog/v0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/v0$b;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/v0$b;-><init>(Lcom/bytedance/applog/v0;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/applog/v0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/v0$g;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/v0$g;-><init>(Lcom/bytedance/applog/v0;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/applog/v0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public abstract c(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/v0$a;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/v0$a;-><init>(Lcom/bytedance/applog/v0;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/applog/v0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/v0$c;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/v0$c;-><init>(Lcom/bytedance/applog/v0;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/applog/v0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/v0$e;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/v0$e;-><init>(Lcom/bytedance/applog/v0;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/applog/v0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/v0$f;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/v0$f;-><init>(Lcom/bytedance/applog/v0;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/applog/v0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/applog/v0$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
