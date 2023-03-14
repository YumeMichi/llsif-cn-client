.class Lextension/ShengQu/GHomeExtension$2;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension;->InitPrivacyAgreement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextension/ShengQu/GHomeExtension;

.field final synthetic val$activity:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lextension/ShengQu/GHomeExtension;Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$2;->this$0:Lextension/ShengQu/GHomeExtension;

    iput-object p2, p0, Lextension/ShengQu/GHomeExtension$2;->val$activity:Lklb/android/GameEngine/GameEngineActivity;

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

    .line 156
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p1

    invoke-virtual {p1}, Lextension/ShengQu/GHomeExtension;->InitGHome()V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$2;->val$activity:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {p1}, Lklb/android/GameEngine/GameEngineActivity;->finish()V

    const/4 p1, 0x0

    .line 161
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method
