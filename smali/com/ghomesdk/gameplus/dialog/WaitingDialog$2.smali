.class final Lcom/ghomesdk/gameplus/dialog/WaitingDialog$2;
.super Ljava/lang/Object;
.source "WaitingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->showUI(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$themeResId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$2;->val$themeResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$104()I

    .line 70
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$200()Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$2;->val$themeResId:I

    invoke-direct {v0, v1, v2}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$202(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    .line 73
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$200()Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$200()Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->show()V

    .line 75
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showui new WaitingDialog"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
