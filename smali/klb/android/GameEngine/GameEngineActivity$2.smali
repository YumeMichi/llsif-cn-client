.class Lklb/android/GameEngine/GameEngineActivity$2;
.super Landroid/view/OrientationEventListener;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;I)V
    .locals 0

    .line 327
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$2;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1e

    .line 337
    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    .line 338
    rem-int/lit8 v0, p1, 0x2

    .line 339
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$2;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v1}, Lklb/android/GameEngine/GameEngineActivity;->access$200(Lklb/android/GameEngine/GameEngineActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 340
    :cond_1
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lklb/android/GameEngine/PFInterface;->screenRotation(I)V

    .line 341
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$2;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0, p1}, Lklb/android/GameEngine/GameEngineActivity;->access$202(Lklb/android/GameEngine/GameEngineActivity;I)I

    return-void
.end method
