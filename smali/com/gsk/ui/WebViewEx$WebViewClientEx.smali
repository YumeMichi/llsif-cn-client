.class public Lcom/gsk/ui/WebViewEx$WebViewClientEx;
.super Lcom/gsk/ui/ViewClientDecorator;
.source "WebViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsk/ui/WebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewClientEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/ui/WebViewEx;


# direct methods
.method public constructor <init>(Lcom/gsk/ui/WebViewEx;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/gsk/ui/WebViewEx$WebViewClientEx;->this$0:Lcom/gsk/ui/WebViewEx;

    invoke-direct {p0}, Lcom/gsk/ui/ViewClientDecorator;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClientEx-doUpdateVisitedHistory,url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSK-WebViewEx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/gsk/ui/WebViewEx$WebViewClientEx;->this$0:Lcom/gsk/ui/WebViewEx;

    invoke-static {v0, p1}, Lcom/gsk/ui/WebViewEx;->access$000(Lcom/gsk/ui/WebViewEx;Landroid/webkit/WebView;)V

    .line 505
    invoke-super {p0, p1, p2, p3}, Lcom/gsk/ui/ViewClientDecorator;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClientEx-onLoadResource,url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSK-WebViewEx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/gsk/ui/WebViewEx$WebViewClientEx;->this$0:Lcom/gsk/ui/WebViewEx;

    invoke-static {v0, p1}, Lcom/gsk/ui/WebViewEx;->access$000(Lcom/gsk/ui/WebViewEx;Landroid/webkit/WebView;)V

    .line 498
    invoke-super {p0, p1, p2}, Lcom/gsk/ui/ViewClientDecorator;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClientEx-onPageFinished,url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSK-WebViewEx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/gsk/ui/WebViewEx$WebViewClientEx;->this$0:Lcom/gsk/ui/WebViewEx;

    invoke-static {v0, p1}, Lcom/gsk/ui/WebViewEx;->access$000(Lcom/gsk/ui/WebViewEx;Landroid/webkit/WebView;)V

    .line 519
    invoke-super {p0, p1, p2}, Lcom/gsk/ui/ViewClientDecorator;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClientEx-onPageStarted,url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSK-WebViewEx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/gsk/ui/WebViewEx$WebViewClientEx;->this$0:Lcom/gsk/ui/WebViewEx;

    invoke-static {v0, p1}, Lcom/gsk/ui/WebViewEx;->access$000(Lcom/gsk/ui/WebViewEx;Landroid/webkit/WebView;)V

    .line 512
    invoke-super {p0, p1, p2, p3}, Lcom/gsk/ui/ViewClientDecorator;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
