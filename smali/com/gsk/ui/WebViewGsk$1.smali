.class Lcom/gsk/ui/WebViewGsk$1;
.super Lcom/gsk/ui/ViewClientDecorator;
.source "WebViewGsk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/ui/WebViewGsk;->initial(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/ui/WebViewGsk;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/gsk/ui/WebViewGsk;Landroid/content/Context;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/gsk/ui/WebViewGsk$1;->this$0:Lcom/gsk/ui/WebViewGsk;

    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/gsk/ui/ViewClientDecorator;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-static {}, Lcom/gsk/ui/WebViewGsk;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$1;->this$0:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v0}, Lcom/gsk/ui/WebViewGsk;->hideLoading()V

    .line 171
    invoke-super {p0, p1, p2}, Lcom/gsk/ui/ViewClientDecorator;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 119
    invoke-static {}, Lcom/gsk/ui/WebViewGsk;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "alipays://platformapi"

    .line 123
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "android.intent.action.VIEW"

    if-eqz v3, :cond_0

    .line 125
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :cond_0
    const-string v3, "http:"

    .line 136
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "https:"

    if-nez v5, :cond_1

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "wx.tenpay.com"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/gsk/ui/WebViewGsk$1;->this$0:Lcom/gsk/ui/WebViewGsk;

    invoke-static {v1}, Lcom/gsk/ui/WebViewGsk;->access$100(Lcom/gsk/ui/WebViewGsk;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Referer"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return v2

    :cond_2
    const-string v5, "weixin://wap/pay"

    .line 142
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    :try_start_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    iget-object p1, p0, Lcom/gsk/ui/WebViewGsk$1;->val$context:Landroid/content/Context;

    const-string p2, "\u8bf7\u786e\u8ba4\u662f\u5426\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    .line 155
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$1;->this$0:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v0, p1, p2}, Lcom/gsk/ui/WebViewGsk;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 164
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/gsk/ui/ViewClientDecorator;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 156
    :cond_6
    :goto_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2

    :catch_1
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    iget-object p1, p0, Lcom/gsk/ui/WebViewGsk$1;->val$context:Landroid/content/Context;

    const-string p2, "\u8bf7\u786e\u8ba4\u662f\u5426\u5b89\u88c5\u652f\u4ed8\u5b9d"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2
.end method
