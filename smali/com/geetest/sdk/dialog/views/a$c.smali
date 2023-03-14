.class public Lcom/geetest/sdk/dialog/views/a$c;
.super Landroid/os/Handler;
.source "WebviewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/dialog/views/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/dialog/views/a;


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/dialog/views/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a$c;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/a$c;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/geetest/sdk/dialog/views/a;->e()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a$c;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/a;->c(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/model/beans/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "handleMessage-->timeout %s !"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/a$c;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object p1

    const-string v0, "204"

    const-string v1, "load static resource timeout !"

    invoke-virtual {p1, v0, v1}, Lcom/geetest/sdk/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
