.class public Lcom/geetest/sdk/dialog/views/a$d;
.super Ljava/lang/Object;
.source "WebviewBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/dialog/views/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/dialog/views/a;


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/dialog/views/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a$d;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a$d;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/a;->d(Lcom/geetest/sdk/dialog/views/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
