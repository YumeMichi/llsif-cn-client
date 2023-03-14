.class Lklb/android/GameEngine/GameEngineActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->instanciateEarphoneChecker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 960
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TEST_OUTPUT"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 963
    iget-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v0, 0x0

    const-string v1, "state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, v0}, Lklb/android/GameEngine/GameEngineActivity;->access$802(Lklb/android/GameEngine/GameEngineActivity;Z)Z

    .line 965
    iget-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {p1}, Lklb/android/GameEngine/GameEngineActivity;->setMannerMode()V

    .line 966
    iget-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {p1}, Lklb/android/GameEngine/GameEngineActivity;->access$800(Lklb/android/GameEngine/GameEngineActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 968
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    invoke-virtual {p1}, Lklb/android/GameEngine/PFInterface;->onHeadsetActive()V

    :cond_1
    return-void
.end method
