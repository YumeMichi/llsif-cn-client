.class Lklb/android/GameEngine/WebViewItem$6;
.super Ljava/lang/Object;
.source "WebViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->setZoom(Z)V
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

    .line 380
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$6;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 384
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$6;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$6;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v1, v1, Lklb/android/GameEngine/WebViewItem;->m_bZoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method
