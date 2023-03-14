.class Lklb/android/GameEngine/WebViewItem$4;
.super Landroid/webkit/WebViewClient;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/WebViewItem;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 286
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 287
    iget-object p2, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean p2, p2, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz p2, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p2

    sget-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v0

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/HelpWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;ILjava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 278
    iget-object p2, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean p2, p2, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz p2, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p2

    sget-object p3, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {p3}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result p3

    const-string v0, ""

    invoke-virtual {p2, p1, p3, v0}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;ILjava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object p2, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean p2, p2, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz p2, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p2

    sget-object p3, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {p3}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result p3

    const-string p4, ""

    invoke-virtual {p2, p1, p3, p4}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;ILjava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 250
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 251
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0, p2}, Lklb/android/GameEngine/WebViewItem;->access$200(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    sget-object v2, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v2}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvalidUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v2, p2}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;ILjava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "native://"

    .line 256
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 263
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$300(Lklb/android/GameEngine/WebViewItem;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 268
    :cond_2
    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lklb/android/GameEngine/WebViewItem;->access$002(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p2

    sget-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v0

    const-string v2, ""

    invoke-virtual {p2, p1, v0, v2}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;ILjava/lang/String;)V

    return v1
.end method
