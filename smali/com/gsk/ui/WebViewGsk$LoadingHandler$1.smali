.class Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;
.super Ljava/lang/Object;
.source "WebViewGsk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/ui/WebViewGsk$LoadingHandler;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;


# direct methods
.method constructor <init>(Lcom/gsk/ui/WebViewGsk$LoadingHandler;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    iget-object v0, v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->webView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v2}, Lcom/gsk/ui/WebViewGsk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->progressDialog:Landroid/app/ProgressDialog;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    iget-object v0, v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 246
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    iget-object v0, v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    iget-object v1, v1, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->webView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v1}, Lcom/gsk/ui/WebViewGsk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "R.layout.youyun_web_view_loading"

    invoke-static {v1, v2}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 247
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    iget-object v0, v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    iget-object v1, v1, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->webView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v1}, Lcom/gsk/ui/WebViewGsk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "R.id.img_icon"

    invoke-static {v1, v2}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 249
    iget-object v1, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->this$0:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    iget-object v1, v1, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->webView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v1}, Lcom/gsk/ui/WebViewGsk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "R.anim.youyun_loading_icon"

    invoke-static {v1, v2}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 250
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 251
    new-instance v2, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1$1;

    invoke-direct {v2, p0, v1}, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1$1;-><init>(Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
