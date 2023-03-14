.class public Lcom/geetest/sdk/ax;
.super Ljava/lang/Object;
.source "GtRequest.java"


# static fields
.field private static final b:Ljava/lang/String; = "ax"

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geetest/sdk/ax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/geetest/sdk/ax;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/ax;->a:Z

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/geetest/sdk/ax;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/geetest/sdk/ax;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geetest/sdk/ax;

    .line 3
    invoke-virtual {v1}, Lcom/geetest/sdk/ax;->a()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/geetest/sdk/ax;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public static c()Lcom/geetest/sdk/ax;
    .locals 2

    .line 1
    new-instance v0, Lcom/geetest/sdk/ax;

    invoke-direct {v0}, Lcom/geetest/sdk/ax;-><init>()V

    .line 2
    sget-object v1, Lcom/geetest/sdk/ax;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/ax;->a:Z

    return-void
.end method

.method public a(Lcom/geetest/sdk/aw;Lcom/geetest/sdk/ay;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geetest/sdk/aw<",
            "TT;>;",
            "Lcom/geetest/sdk/ay<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geetest/sdk/utils/t;->a()Lcom/geetest/sdk/utils/t;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/ax$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/geetest/sdk/ax$a;-><init>(Lcom/geetest/sdk/ax;Lcom/geetest/sdk/aw;Lcom/geetest/sdk/ay;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/utils/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/geetest/sdk/aw;Lcom/geetest/sdk/ay;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geetest/sdk/aw<",
            "TT;>;",
            "Lcom/geetest/sdk/ay<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 11
    sget-object v0, Lcom/geetest/sdk/ax;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " REQUEST START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/geetest/sdk/ax;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " REQUEST URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/utils/p;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Network Not Avaliable"

    invoke-virtual {p1, v1, v0}, Lcom/geetest/sdk/aw;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/geetest/sdk/aw;->a(ILjava/lang/String;)V

    .line 18
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/aw;->a(Lcom/geetest/sdk/ay;)V

    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->f()[B

    move-result-object v0

    .line 27
    iget-boolean v1, p0, Lcom/geetest/sdk/ax;->a:Z

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/aw;->b(Lcom/geetest/sdk/ay;)V

    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->e()Z

    move-result v2

    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/geetest/sdk/utils/n;->a(Ljava/lang/String;ZLjava/util/Map;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/geetest/sdk/ax;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/geetest/sdk/aw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "REQUEST END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-boolean v1, p0, Lcom/geetest/sdk/ax;->a:Z

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/aw;->b(Lcom/geetest/sdk/ay;)V

    return-void

    .line 49
    :cond_2
    invoke-virtual {p1, v0}, Lcom/geetest/sdk/aw;->b(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/aw;->a(Lcom/geetest/sdk/ay;)V

    return-void

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This thread(ui) forbids invoke."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
