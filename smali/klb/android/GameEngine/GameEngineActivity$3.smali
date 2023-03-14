.class Lklb/android/GameEngine/GameEngineActivity$3;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->setImmersiveMode(I)V
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

    .line 422
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$3;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1706

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 436
    :goto_0
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$3;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v1}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
