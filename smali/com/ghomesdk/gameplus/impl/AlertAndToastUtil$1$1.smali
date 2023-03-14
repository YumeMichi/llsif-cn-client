.class Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1$1;
.super Ljava/lang/Object;
.source "AlertAndToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 31
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;

    iget-object v2, v2, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;

    iget-object v2, v2, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$act:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;

    iget-object v2, v2, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;->val$errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 38
    :goto_0
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
