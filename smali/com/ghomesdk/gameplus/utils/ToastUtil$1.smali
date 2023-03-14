.class final Lcom/ghomesdk/gameplus/utils/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/content/Context;

.field final synthetic val$len:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$msg:Ljava/lang/String;

    iput p2, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$len:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$act:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 29
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v1

    iget v2, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$len:I

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 33
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$act:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$act:Landroid/content/Context;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;->val$len:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 37
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 41
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
