.class Lklb/android/GameEngine/GameEngineActivity$6;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->forbidSleep(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;

.field final synthetic val$isForbidden:Z


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Z)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$6;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    iput-boolean p2, p0, Lklb/android/GameEngine/GameEngineActivity$6;->val$isForbidden:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1142
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity$6;->val$isForbidden:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$6;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$6;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method
