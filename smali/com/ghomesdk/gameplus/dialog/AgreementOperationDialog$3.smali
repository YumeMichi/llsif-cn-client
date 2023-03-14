.class Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;
.super Landroid/webkit/WebViewClient;
.source "AgreementOperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 106
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPageFinished\uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgreeOperaDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->access$100(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->access$100(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "contentData is empty"

    .line 109
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->dismiss()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPageStarted\uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgreeOperaDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "http:"

    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 89
    :cond_1
    :goto_0
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gl_app_theme_light"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;-><init>(Landroid/content/Context;I)V

    .line 90
    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->setContentUrl(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
