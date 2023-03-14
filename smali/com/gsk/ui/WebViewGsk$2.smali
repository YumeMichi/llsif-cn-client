.class Lcom/gsk/ui/WebViewGsk$2;
.super Lcom/gsk/ui/ChromeClientDecorator;
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


# direct methods
.method constructor <init>(Lcom/gsk/ui/WebViewGsk;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/gsk/ui/WebViewGsk$2;->this$0:Lcom/gsk/ui/WebViewGsk;

    invoke-direct {p0}, Lcom/gsk/ui/ChromeClientDecorator;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 177
    invoke-static {}, Lcom/gsk/ui/WebViewGsk;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-super {p0, p1, p2}, Lcom/gsk/ui/ChromeClientDecorator;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
