.class public Lcom/geetest/sdk/g$d;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/g;


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/g$d;->a:Lcom/geetest/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/g$d;->a:Lcom/geetest/sdk/g;

    invoke-static {v1}, Lcom/geetest/sdk/g;->c(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/g$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/geetest/sdk/g$d;->a:Lcom/geetest/sdk/g;

    invoke-static {v1}, Lcom/geetest/sdk/g;->c(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/g$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
