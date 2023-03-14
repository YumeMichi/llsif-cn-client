.class Lextension/ShengQu/GHomeExtension$3;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension;->InitGHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextension/ShengQu/GHomeExtension;

.field final synthetic val$self:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lextension/ShengQu/GHomeExtension;Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$3;->this$0:Lextension/ShengQu/GHomeExtension;

    iput-object p2, p0, Lextension/ShengQu/GHomeExtension$3;->val$self:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    .line 174
    iget-object p3, p0, Lextension/ShengQu/GHomeExtension$3;->this$0:Lextension/ShengQu/GHomeExtension;

    invoke-virtual {p3}, Lextension/ShengQu/GHomeExtension;->GhomeInited()V

    .line 176
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LoveLive!"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "gh"

    if-nez p1, :cond_0

    const-string p3, "ghome init success"

    .line 178
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    .line 185
    :cond_1
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object p3

    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$3;->val$self:Lklb/android/GameEngine/GameEngineActivity;

    new-instance v1, Lextension/ShengQu/GHomeExtension$3$1;

    invoke-direct {v1, p0}, Lextension/ShengQu/GHomeExtension$3$1;-><init>(Lextension/ShengQu/GHomeExtension$3;)V

    invoke-virtual {p3, v0, v1}, Lcom/ghome/sdk/GHome;->logout(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    :cond_2
    const/4 p3, 0x3

    const/4 v0, 0x0

    if-ne p1, p3, :cond_3

    const-string p3, "ghome init account changed"

    .line 200
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p3

    invoke-virtual {p3}, Lextension/ShengQu/GHomeExtension;->logouted()V

    .line 202
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p3

    iput-boolean v0, p3, Lextension/ShengQu/GHomeExtension;->b_Logined:Z

    :cond_3
    const/4 p3, 0x5

    if-ne p1, p3, :cond_4

    const-string p1, "chanel call exit"

    .line 207
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$3;->val$self:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {p1}, Lklb/android/GameEngine/GameEngineActivity;->finish()V

    .line 209
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_4
    return-void
.end method
