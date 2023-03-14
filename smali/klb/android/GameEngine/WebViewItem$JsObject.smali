.class public Lklb/android/GameEngine/WebViewItem$JsObject;
.super Ljava/lang/Object;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/WebViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsObject"
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field final synthetic this$0:Lklb/android/GameEngine/WebViewItem;


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/WebViewItem;Landroid/content/Context;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->m_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cmd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0, p1}, Lklb/android/GameEngine/WebViewItem;->access$002(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;ILjava/lang/String;)V

    return-void
.end method
