.class Lklb/android/GameEngine/GameEngineActivity$5;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1063
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$5;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1068
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$5;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1070
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$5;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v1}, Lklb/android/GameEngine/GameEngineActivity;->access$900(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1072
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$5;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v1}, Lklb/android/GameEngine/GameEngineActivity;->access$1000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1074
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v2, "ENG_AND_OK"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lklb/android/GameEngine/GameEngineActivity$5$1;

    invoke-direct {v2, p0}, Lklb/android/GameEngine/GameEngineActivity$5$1;-><init>(Lklb/android/GameEngine/GameEngineActivity$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1081
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1082
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
