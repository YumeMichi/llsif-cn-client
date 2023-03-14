.class public Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "ShowBindedPhoneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowBindedPhoneDialog"


# instance fields
.field private act:Landroid/app/Activity;

.field private callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

.field private checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

.field protected initLayoutId:I

.field private isNeedShowPhone:Z

.field private mBindedPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 30
    new-instance p2, Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    invoke-direct {p2}, Lcom/ghomesdk/gameplus/utils/FastClickChecker;-><init>()V

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->isNeedShowPhone:Z

    .line 38
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    .line 40
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const-string p3, "gl_view_show_bind_phone"

    .line 41
    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->initLayoutId:I

    .line 42
    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 9

    .line 53
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v1, "iv_close"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "tv_rebind_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v3, "tv_binded_phone"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v4, ""

    const-string v5, "gl_bindphone"

    invoke-static {v3, v5, v4}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->mBindedPhone:Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->mBindedPhone:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->mBindedPhone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xb

    if-lt v3, v6, :cond_0

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->mBindedPhone:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "****"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->mBindedPhone:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 64
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "tv_content"

    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v3, "ll_show_phone"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v6, "tv_phone_login"

    invoke-static {v3, v6}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->mBindedPhone:Ljava/lang/String;

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v3, "dlg_bindphonerebind"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iput-boolean v8, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->isNeedShowPhone:Z

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eb2\u7231\u7684\u7528\u6237\uff0c\u60a8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->THIRD_LOGIN_CHANGE_BIND_DAYS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5929\u540e\u53ef\u518d\u6b21\u53d8\u66f4\u5173\u8054\u624b\u673a\u8d26\u53f7\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "KEY_LOGIN_CAN_CHANGE_BIND"

    invoke-static {v0, v2, v5}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 78
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "dlg_error_ok"

    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iput-boolean v5, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->isNeedShowPhone:Z

    .line 88
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/utils/FastClickChecker;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\u53d8\u66f4\u53d6\u6d88"

    const/4 v4, 0x5

    if-ne v0, v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->dismiss()V

    .line 100
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1, v4, v3, v0}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    const-string v1, "tv_rebind_phone"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 102
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->isNeedShowPhone:Z

    if-nez p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1, v4, v3, v0}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 104
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->dismiss()V

    goto :goto_0

    .line 106
    :cond_2
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->act:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b64\u6b21\u53d8\u66f4\u540e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->THIRD_LOGIN_CHANGE_BIND_DAYS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5929\u5185\u4e0d\u80fd\u518d\u6b21\u53d8\u66f4\uff0c\u786e\u8ba4\u7ee7\u7eed\u53d8\u66f4\u5df2\u5173\u8054\u624b\u673a\u53f7\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)V

    .line 107
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->initLayoutId:I

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->init()V

    return-void
.end method

.method public show()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    return-void
.end method
