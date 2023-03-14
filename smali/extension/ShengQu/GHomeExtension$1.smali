.class Lextension/ShengQu/GHomeExtension$1;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension;->beforeDispatchKeyEvent(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$1;->val$activity:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 107
    iget-object p2, p0, Lextension/ShengQu/GHomeExtension$1;->val$activity:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {p2}, Lklb/android/GameEngine/GameEngineActivity;->finish()V

    const/4 p2, 0x0

    .line 108
    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    :cond_0
    const p2, -0xa5db6d

    if-ne p1, p2, :cond_1

    .line 114
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lklb/android/GameEngine/PFInterface;->inputDeviceKey(IC)V

    :cond_1
    return-void
.end method
