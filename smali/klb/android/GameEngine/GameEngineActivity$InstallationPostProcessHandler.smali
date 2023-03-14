.class Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;
.super Landroid/os/Handler;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/GameEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallationPostProcessHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lklb/android/GameEngine/GameEngineActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 1

    .line 834
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 835
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 840
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklb/android/GameEngine/GameEngineActivity;

    if-nez v0, :cond_0

    return-void

    .line 844
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    .line 845
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 846
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 847
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 848
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 849
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0

    .line 852
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 853
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 855
    invoke-virtual {v0, v3}, Lklb/android/GameEngine/GameEngineActivity;->setInstallStatus(Z)V

    const-string p1, "Cpp"

    const-string v0, "InstallEnd"

    .line 856
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
