.class public Lcom/alipay/sdk/widget/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/widget/e;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/widget/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/widget/e$a;->a:Lcom/alipay/sdk/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/widget/e$a;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {v0}, Lcom/alipay/sdk/widget/e;->a(Lcom/alipay/sdk/widget/e;)Lcom/alipay/sdk/widget/e$h;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    invoke-static {}, Lcom/alipay/sdk/widget/e;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/sdk/widget/e$a$a;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/widget/e$a$a;-><init>(Lcom/alipay/sdk/widget/e$a;Landroid/view/View;)V

    const-wide/16 v3, 0x100

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    iget-object v1, p0, Lcom/alipay/sdk/widget/e$a;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {v1}, Lcom/alipay/sdk/widget/e;->b(Lcom/alipay/sdk/widget/e;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$a;->a:Lcom/alipay/sdk/widget/e;

    invoke-interface {v0, p1}, Lcom/alipay/sdk/widget/e$h;->b(Lcom/alipay/sdk/widget/e;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/alipay/sdk/widget/e$a;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {v1}, Lcom/alipay/sdk/widget/e;->c(Lcom/alipay/sdk/widget/e;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$a;->a:Lcom/alipay/sdk/widget/e;

    invoke-interface {v0, p1}, Lcom/alipay/sdk/widget/e$h;->a(Lcom/alipay/sdk/widget/e;)V

    :cond_1
    :goto_0
    return-void
.end method
