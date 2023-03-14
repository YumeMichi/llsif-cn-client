.class Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$3;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$3;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 338
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
