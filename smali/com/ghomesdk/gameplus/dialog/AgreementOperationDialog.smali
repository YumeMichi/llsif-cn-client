.class public Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "AgreementOperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private contentData:Ljava/lang/String;

.field private listener:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "AgreementOperationDialog"

    .line 28
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->listener:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->contentData:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7528\u6237\u670d\u52a1\u5185\u9875"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "gl_dialog_agreement_action"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "webview_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 60
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bt_agree"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bt_disagree"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    new-instance v2, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$1;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$1;-><init>(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$2;-><init>(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->contentData:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;-><init>(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "contentUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->contentData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgreementDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->contentData:Ljava/lang/String;

    return-void
.end method

.method public setOperationListener(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->listener:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;

    return-void
.end method

.method public show()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    return-void
.end method
