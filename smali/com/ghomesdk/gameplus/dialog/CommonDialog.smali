.class public Lcom/ghomesdk/gameplus/dialog/CommonDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;,
        Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    }
.end annotation


# instance fields
.field protected pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->pageName:Ljava/lang/String;

    return-void
.end method

.method public static createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 1

    .line 407
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCloseKeyListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 408
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 409
    invoke-virtual {p0, p4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 417
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setCancelable(Z)V

    return-object p0
.end method

.method public static createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 1

    .line 425
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCloseKeyListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 426
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 427
    invoke-virtual {p0, p4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 435
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setCancelable(Z)V

    return-object p0
.end method

.method public static createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;ZZ)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 1

    .line 443
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCloseKeyListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p8}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->showCloseBtn(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 444
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 445
    invoke-virtual {p0, p4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 453
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setCancelable(Z)V

    return-object p0
.end method

.method public static showDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 460
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
