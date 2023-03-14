.class public Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "AgreementDialog.java"


# static fields
.field private static isDialogShowing:Z


# instance fields
.field private contentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->isDialogShowing:Z

    return p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7528\u6237\u670d\u52a1\u5185\u9875"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    sput-boolean v0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->isDialogShowing:Z

    .line 99
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "gl_dialog_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "webview_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 47
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_close"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/dialog/AgreementDialog$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog$1;-><init>(Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog$2;-><init>(Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "contentUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgreementDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->contentUrl:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 1

    .line 89
    sget-boolean v0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->isDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    sput-boolean v0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->isDialogShowing:Z

    .line 93
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    return-void
.end method
