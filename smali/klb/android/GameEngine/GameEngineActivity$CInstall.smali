.class Lklb/android/GameEngine/GameEngineActivity$CInstall;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/GameEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CInstall"
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method private constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$CInstall;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Lklb/android/GameEngine/GameEngineActivity$1;)V
    .locals 0

    .line 814
    invoke-direct {p0, p1}, Lklb/android/GameEngine/GameEngineActivity$CInstall;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 818
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$CInstall;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/GameEngineActivity;->access$400(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$CInstall;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v2}, Lklb/android/GameEngine/GameEngineActivity;->access$500(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklb/android/GameEngine/GameEngineActivity;->access$600(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$CInstall;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/GameEngineActivity;->access$700(Lklb/android/GameEngine/GameEngineActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
