.class Lklb/android/GameEngine/WebViewItem$1;
.super Ljava/lang/Object;
.source "WebViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->setStatus()V
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

    .line 161
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$1;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$1;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$1;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem$1;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v2, v2, Lklb/android/GameEngine/WebViewItem;->m_enabled:Z

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/HelpWebView;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$1;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$1;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$1;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setVisibility(I)V

    :goto_0
    return-void
.end method
