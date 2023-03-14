.class Lcom/gsk/ui/WebViewGsk$LoadingHandler;
.super Landroid/os/Handler;
.source "WebViewGsk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsk/ui/WebViewGsk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingHandler"
.end annotation


# instance fields
.field callback:Ljava/lang/Runnable;

.field progressDialog:Landroid/app/ProgressDialog;

.field webView:Lcom/gsk/ui/WebViewGsk;


# direct methods
.method public constructor <init>(Lcom/gsk/ui/WebViewGsk;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->webView:Lcom/gsk/ui/WebViewGsk;

    return-void
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .line 263
    invoke-static {}, Lcom/gsk/ui/WebViewGsk;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->callback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    return-void
.end method

.method public showLoading()V
    .locals 3

    .line 236
    invoke-static {}, Lcom/gsk/ui/WebViewGsk;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;

    invoke-direct {v0, p0}, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;-><init>(Lcom/gsk/ui/WebViewGsk$LoadingHandler;)V

    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->callback:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
