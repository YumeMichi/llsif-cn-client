.class Lklb/android/GameEngine/WebViewItem$5;
.super Ljava/lang/Object;
.source "WebViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->update()V
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

    .line 326
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 330
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->requestLayout()V

    .line 333
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v1, v0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v2, v2, Lklb/android/GameEngine/WebViewItem;->m_color:I

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/WebViewItem;->setColor(II)V

    .line 337
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$400(Lklb/android/GameEngine/WebViewItem;)V

    .line 339
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$500(Lklb/android/GameEngine/WebViewItem;)V

    .line 341
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v0

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$600(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v2}, Lklb/android/GameEngine/WebViewItem;->access$300(Lklb/android/GameEngine/WebViewItem;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/HelpWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    .line 346
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$700(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v0}, Lklb/android/GameEngine/WebViewItem;->access$700(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lklb/android/GameEngine/WebViewItem;->access$702(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    .line 350
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lklb/android/GameEngine/HelpWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lklb/android/GameEngine/HelpWebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
