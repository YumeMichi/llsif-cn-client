.class public Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "FloatLimitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginLimitDialog "

.field public static hasShowDialog:Z


# instance fields
.field private act:Landroid/app/Activity;

.field private btnText:Ljava/lang/String;

.field private callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

.field protected initLayoutId:I

.field private mTips:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->act:Landroid/app/Activity;

    .line 33
    iput-object p3, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    .line 34
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const-string p2, "gl_pt_float_permission"

    .line 35
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->initLayoutId:I

    .line 41
    iput-object p4, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->mTips:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->act:Landroid/app/Activity;

    const-string v1, "tv_msg"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->act:Landroid/app/Activity;

    const-string v2, "bt_get"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->act:Landroid/app/Activity;

    const-string v3, "bt_cancel"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    iget-object v3, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->mTips:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->act:Landroid/app/Activity;

    const-string v2, "bt_get"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {p1, v0, v2, v1}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 66
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->dismiss()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->act:Landroid/app/Activity;

    const-string v1, "bt_cancel"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget p1, p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->initLayoutId:I

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->init()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " hasShowDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->hasShowDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginLimitDialog "

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-boolean v0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->hasShowDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    sput-boolean v0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->hasShowDialog:Z

    .line 77
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->hasShowDialog:Z

    .line 80
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->dismiss()V

    :goto_0
    return-void
.end method
