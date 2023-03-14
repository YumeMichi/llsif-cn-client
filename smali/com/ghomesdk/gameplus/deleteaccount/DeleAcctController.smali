.class public Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;
.super Ljava/lang/Object;
.source "DeleAcctController.java"


# static fields
.field private static instance:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;


# instance fields
.field private mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

.field private mContext:Landroid/content/Context;

.field private mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

.field private viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;

    .line 39
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    .line 40
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;ILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doCloseCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)Lcom/ghomesdk/gameplus/callback/ResultCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;ILjava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->dealFailMsg(ILjava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method

.method private dealFailMsg(ILjava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 3

    const/16 v0, 0x2c4

    if-ne v0, p1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->showTimeOutTip()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 161
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 166
    invoke-interface {p3, p1, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private doCloseCallback(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;

    .line 200
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    if-eqz v1, :cond_0

    .line 201
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1, p1, p2, v2}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 202
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->dismiss()V

    .line 206
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;
    .locals 1

    .line 45
    sget-object v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->instance:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->instance:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    .line 48
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->instance:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    return-object v0
.end method

.method private showTimeOutTip()V
    .locals 2

    .line 171
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u64cd\u4f5c\u8d85\u65f6\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$6;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$6;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u9000\u51fa"

    .line 175
    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$5;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public doCheckDeleSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 6

    .line 121
    new-instance v5, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;

    invoke-direct {v5, p0, p6}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->deleAcctCheckSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doCheckRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$2;

    invoke-direct {v0, p0, p5}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$2;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->deleAcctRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doClose()V
    .locals 3

    .line 185
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    const-string v2, "gl_dele_acct_close_confirm"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    const-string v2, "dlg_loginclose_ok"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$8;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$8;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    const-string v2, "dlg_loginclose_cancel"

    .line 189
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$7;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$7;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public doComplete()V
    .locals 5

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;

    .line 212
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/ServerApi;->reset()V

    .line 214
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/login/LoginData;->setLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 216
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->dismiss()V

    .line 217
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    .line 218
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "\u6ce8\u9500\u8d26\u53f7\u7533\u8bf7\u63d0\u4ea4\u6210\u529f"

    invoke-interface {v1, v3, v4, v2}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 219
    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    :cond_0
    return-void
.end method

.method public doConfirmDele(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 1

    .line 134
    new-instance v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$4;

    invoke-direct {v0, p0, p3}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$4;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->deleAcctConfirm(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public initDeleAcct()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)V

    invoke-static {v0, v0, v1}, Lcom/ghomesdk/gameplus/impl/ServerApi;->deleteAccountInit(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public showPageView(I)V
    .locals 1

    const-string v0, ""

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->showPageView(ILjava/lang/String;)V

    return-void
.end method

.method public showPageView(ILjava/lang/String;)V
    .locals 2

    .line 83
    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_CONDITION_VIEW:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 84
    new-instance p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;-><init>(Z)V

    goto :goto_0

    .line 85
    :cond_0
    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_AGREEMENT_VIEW:I

    if-ne p1, v0, :cond_1

    .line 86
    new-instance p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;-><init>(Z)V

    goto :goto_0

    .line 87
    :cond_1
    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_REAL_INFO_VIEW:I

    if-ne p1, v0, :cond_2

    .line 88
    new-instance p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;

    invoke-direct {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;-><init>()V

    goto :goto_0

    .line 89
    :cond_2
    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_SEND_SMS_VIEW:I

    if-ne p1, v0, :cond_3

    .line 90
    new-instance p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-direct {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;-><init>()V

    goto :goto_0

    .line 91
    :cond_3
    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_HESITATE_VIEW:I

    if-ne p1, v0, :cond_4

    .line 92
    new-instance p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;

    invoke-direct {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;-><init>()V

    goto :goto_0

    .line 93
    :cond_4
    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_COMPLETE_VIEW:I

    if-ne p1, v0, :cond_5

    .line 94
    new-instance p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_6

    .line 97
    iget-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mDeleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    invoke-virtual {p1, p2, v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V

    .line 99
    :cond_6
    iget-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;

    if-eqz p2, :cond_7

    .line 100
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->hide()V

    .line 101
    iput-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;

    .line 103
    :cond_7
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;

    .line 104
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->viewCurrent:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->show()V

    return-void
.end method

.method public startDele(Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    .line 55
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->initDeleAcct()V

    return-void
.end method
