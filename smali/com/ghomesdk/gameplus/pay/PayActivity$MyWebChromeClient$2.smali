.class Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$2;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 324
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$2;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 327
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
