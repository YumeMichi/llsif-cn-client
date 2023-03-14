.class Lklb/android/GameEngine/PFInterface$2;
.super Ljava/lang/Object;
.source "PFInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/PFInterface;->webview_setText(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$control:Lklb/android/GameEngine/WebViewItem;

.field final synthetic val$inner_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    iput-object p2, p0, Lklb/android/GameEngine/PFInterface$2;->val$control:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 591
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface$2;->val$control:Lklb/android/GameEngine/WebViewItem;

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/WebViewItem;->evaluateJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface$2;->val$control:Lklb/android/GameEngine/WebViewItem;

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/WebViewItem;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
