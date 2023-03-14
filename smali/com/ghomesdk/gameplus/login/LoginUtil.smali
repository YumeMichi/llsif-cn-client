.class public Lcom/ghomesdk/gameplus/login/LoginUtil;
.super Ljava/lang/Object;
.source "LoginUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/LoginUtil;->showErrorUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showError(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 20
    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 22
    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 24
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginUtil$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ghomesdk/gameplus/login/LoginUtil$1;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static showErrorUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 36
    new-instance v6, Lcom/ghomesdk/gameplus/login/LoginUtil$2;

    invoke-direct {v6}, Lcom/ghomesdk/gameplus/login/LoginUtil$2;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    .line 41
    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->showDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)V

    return-void
.end method
