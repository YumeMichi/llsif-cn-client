.class Lklb/android/GameEngine/GameEngineActivity$8;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->startLocation()V
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

    .line 1268
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$8;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1273
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$8;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/GameEngineActivity;->access$1200(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$8;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/GameEngineActivity;->access$1100(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationListener;

    move-result-object v6

    const-string v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method
