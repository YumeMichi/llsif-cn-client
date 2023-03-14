.class Lcom/geetest/sdk/dialog/views/SuccessView$a;
.super Ljava/lang/Object;
.source "SuccessView.java"

# interfaces
.implements Lcom/geetest/sdk/views/GT3View$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/dialog/views/SuccessView;->a(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/GT3ConfigBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/g$c;

.field final synthetic b:Lcom/geetest/sdk/g$f;

.field final synthetic c:Lcom/geetest/sdk/g;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/dialog/views/SuccessView;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->a:Lcom/geetest/sdk/g$c;

    iput-object p3, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->b:Lcom/geetest/sdk/g$f;

    iput-object p4, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->c:Lcom/geetest/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->a:Lcom/geetest/sdk/g$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->b:Lcom/geetest/sdk/g$f;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->c:Lcom/geetest/sdk/g;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/geetest/sdk/g;->d()V

    :cond_1
    :goto_0
    return-void
.end method
