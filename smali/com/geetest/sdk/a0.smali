.class public Lcom/geetest/sdk/a0;
.super Ljava/lang/Object;
.source "UICallback.java"

# interfaces
.implements Lcom/geetest/sdk/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/geetest/sdk/ay<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/geetest/sdk/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geetest/sdk/ay<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/ay;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geetest/sdk/ay<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/a0;->b:Lcom/geetest/sdk/ay;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/geetest/sdk/a0;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/geetest/sdk/ay;)Lcom/geetest/sdk/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geetest/sdk/ay<",
            "TT;>;)",
            "Lcom/geetest/sdk/a0<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/geetest/sdk/a0;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/a0;-><init>(Lcom/geetest/sdk/ay;)V

    return-object v0
.end method

.method static synthetic a(Lcom/geetest/sdk/a0;)Lcom/geetest/sdk/ay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/a0;->b:Lcom/geetest/sdk/ay;

    return-object p0
.end method

.method private b(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a0;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/geetest/sdk/a0$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geetest/sdk/a0$a;-><init>(Lcom/geetest/sdk/a0;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geetest/sdk/a0$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geetest/sdk/a0$b;-><init>(Lcom/geetest/sdk/a0;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/a0;->b:Lcom/geetest/sdk/ay;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/a0;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/a0;->b:Lcom/geetest/sdk/ay;

    invoke-interface {v0, p1, p2, p3}, Lcom/geetest/sdk/ay;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
