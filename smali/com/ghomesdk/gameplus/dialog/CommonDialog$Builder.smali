.class public Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/dialog/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private advice:Ljava/lang/String;

.field private backKeyOnClickListener:Landroid/content/DialogInterface$OnKeyListener;

.field private cancelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

.field private cancelStr:Ljava/lang/String;

.field private closelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

.field private confirmOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

.field private confirmStr:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private customAlertDialog:Z

.field private describe0:Ljava/lang/String;

.field private describe1:Ljava/lang/String;

.field private describe2:Ljava/lang/String;

.field private describeSpan1:Landroid/text/SpannableString;

.field private describeSpan2:Landroid/text/SpannableString;

.field private highLightColor:I

.field private remind:Ljava/lang/String;

.field private remindSpan:Landroid/text/SpannableString;

.field private showClose:Z

.field private showDaoyuAd:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->highLightColor:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->confirmOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    .line 53
    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->cancelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    .line 54
    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->closelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->showDaoyuAd:Z

    .line 56
    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->backKeyOnClickListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 57
    iput-boolean v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->customAlertDialog:Z

    .line 58
    iput-boolean v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->showClose:Z

    .line 61
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->closelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->confirmOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->cancelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 9

    .line 66
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v2, "gl_app_theme_light"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;-><init>(Landroid/content/Context;I)V

    .line 67
    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->customAlertDialog:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "gl_dialog_common2"

    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setContentView(I)V

    goto/16 :goto_3

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "gl_dialog_common"

    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setContentView(I)V

    .line 71
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "tv_dialog_title"

    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    iget-object v4, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v5, "tv_dialog_remind"

    invoke-static {v4, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    iget-object v5, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v6, "tv_dialog_advice"

    invoke-static {v5, v6}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v8, "gl_bind_succ"

    invoke-static {v7, v8}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\u5e10\u53f7\u7ed1\u5b9a\u6210\u529f\u7ed3\u679c\u9875"

    .line 80
    iput-object v6, v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->pageName:Ljava/lang/String;

    .line 82
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->remind:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->remindSpan:Landroid/text/SpannableString;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->remind:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->remindSpan:Landroid/text/SpannableString;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->remind:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->advice:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->advice:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_2
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "iv_dialog_ad"

    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 100
    iget-boolean v4, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->showDaoyuAd:Z

    if-eqz v4, :cond_6

    const-string v4, "\u53e8\u9c7c\u4e0b\u8f7d\u9875\u9762"

    .line 101
    iput-object v4, v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->pageName:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :goto_3
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "tv_dialog_confirm"

    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    iget-object v4, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v5, "tv_dialog_cancel"

    invoke-static {v4, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 109
    iget-object v5, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v6, "view_dialog_cancel_placeholder"

    invoke-static {v5, v6}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 110
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v7, "iv_close"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 111
    iget-boolean v7, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->showClose:Z

    if-eqz v7, :cond_7

    .line 112
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :goto_4
    new-instance v7, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;

    invoke-direct {v7, p0, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;-><init>(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;Lcom/ghomesdk/gameplus/dialog/CommonDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->confirmStr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 128
    :cond_8
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->confirmStr:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->confirmOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    if-eqz v6, :cond_9

    .line 130
    new-instance v6, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$2;

    invoke-direct {v6, p0, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$2;-><init>(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;Lcom/ghomesdk/gameplus/dialog/CommonDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_5
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->cancelStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 141
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 144
    :cond_a
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->cancelStr:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->cancelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    if-eqz v1, :cond_b

    .line 146
    new-instance v1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;

    invoke-direct {v1, p0, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;-><init>(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;Lcom/ghomesdk/gameplus/dialog/CommonDialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 155
    :cond_b
    new-instance v1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$4;

    invoke-direct {v1, p0, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$4;-><init>(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;Lcom/ghomesdk/gameplus/dialog/CommonDialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_6
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_7
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "sv_des_0"

    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 166
    iget-object v4, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v5, "tv_dialog_des_0"

    invoke-static {v4, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 167
    iget-object v5, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v6, "tv_dialog_des_1"

    invoke-static {v5, v6}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 168
    iget-object v6, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v7, "tv_dialog_des_2"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 169
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 170
    iget v7, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->highLightColor:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    .line 171
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 173
    :cond_c
    iget-object v7, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe0:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 174
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_8

    .line 176
    :cond_d
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe0:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_8
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describeSpan1:Landroid/text/SpannableString;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 180
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 182
    :cond_e
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 183
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describeSpan1:Landroid/text/SpannableString;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 185
    :cond_f
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe1:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_9
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->context:Landroid/content/Context;

    const-string v5, "gl_read_agreement"

    invoke-static {v4, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "\u7528\u6237\u670d\u52a1\u534f\u8bae\u786e\u8ba4\u9875"

    .line 189
    iput-object v1, v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->pageName:Ljava/lang/String;

    .line 192
    :cond_10
    :goto_a
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describeSpan2:Landroid/text/SpannableString;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 193
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    .line 195
    :cond_11
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 196
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describeSpan2:Landroid/text/SpannableString;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 198
    :cond_12
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe2:Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_b
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :goto_c
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->backKeyOnClickListener:Landroid/content/DialogInterface$OnKeyListener;

    if-nez v1, :cond_13

    .line 203
    new-instance v1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$5;-><init>(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_d

    .line 214
    :cond_13
    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_d
    return-object v0
.end method

.method public isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->customAlertDialog:Z

    return-object p0
.end method

.method public setAdvice(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->advice:Ljava/lang/String;

    return-object p0
.end method

.method public setBackKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->backKeyOnClickListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->cancelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    return-object p0
.end method

.method public setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->cancelStr:Ljava/lang/String;

    return-object p0
.end method

.method public setCloseKeyListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->closelOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    return-object p0
.end method

.method public setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->confirmOnClickListener:Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    return-object p0
.end method

.method public setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->confirmStr:Ljava/lang/String;

    return-object p0
.end method

.method public setDescribe0(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe0:Ljava/lang/String;

    return-object p0
.end method

.method public setDescribe1(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describeSpan1:Landroid/text/SpannableString;

    return-object p0
.end method

.method public setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe1:Ljava/lang/String;

    return-object p0
.end method

.method public setDescribe2(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describeSpan2:Landroid/text/SpannableString;

    return-object p0
.end method

.method public setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->describe2:Ljava/lang/String;

    return-object p0
.end method

.method public setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 280
    iput p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->highLightColor:I

    return-object p0
.end method

.method public setRemind(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->remindSpan:Landroid/text/SpannableString;

    return-object p0
.end method

.method public setRemind(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->remind:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public showCloseBtn(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 0

    .line 394
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->showClose:Z

    return-object p0
.end method

.method public showDaoyuAd()Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->showDaoyuAd:Z

    return-object p0
.end method
