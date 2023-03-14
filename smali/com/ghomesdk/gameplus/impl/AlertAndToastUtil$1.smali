.class final Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;
.super Ljava/lang/Object;
.source "AlertAndToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->showMessage(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$type:I

    iput-object p2, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$errorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 26
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$errorMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1$1;-><init>(Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
