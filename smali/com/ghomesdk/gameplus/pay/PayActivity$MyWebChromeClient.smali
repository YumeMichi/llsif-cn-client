.class Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/pay/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;


# direct methods
.method private constructor <init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ghomesdk/gameplus/pay/PayActivity;Lcom/ghomesdk/gameplus/pay/PayActivity$1;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3

    const-string p1, "PayActivity"

    const-string v0, "PayActivity onCloseWindow"

    .line 317
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "android:onCloseWindow"

    invoke-virtual {p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/pay/PayActivity;->finishPay(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 347
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 323
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u8bf7\u786e\u8ba4"

    .line 324
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$2;

    invoke-direct {p3, p0, p4}, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$2;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$1;

    invoke-direct {p3, p0, p4}, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$1;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    const-string v0, "\u53d6\u6d88"

    .line 329
    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    new-instance p1, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$3;

    invoke-direct {p1, p0, p4}, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient$3;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
