.class Lklb/android/GameEngine/GLES20GameRenderer$1;
.super Ljava/lang/Object;
.source "GLES20GameRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GLES20GameRenderer;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GLES20GameRenderer;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GLES20GameRenderer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lklb/android/GameEngine/GLES20GameRenderer$1;->this$0:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->updateControl()V

    return-void
.end method
