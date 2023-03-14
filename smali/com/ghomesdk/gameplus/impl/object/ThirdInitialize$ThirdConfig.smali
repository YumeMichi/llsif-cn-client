.class public Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;
.super Ljava/lang/Object;
.source "ThirdInitialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThirdConfig"
.end annotation


# instance fields
.field private enable:I

.field private thirdAppId:Ljava/lang/String;

.field private thirdAppKey:Ljava/lang/String;

.field private thirdChannelId:Ljava/lang/String;

.field private thirdSdkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnable()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->enable:I

    return v0
.end method

.method public getThirdAppId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdAppKey()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdChannelId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdSdkName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnable(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->enable:I

    return-void
.end method

.method public setThirdAppId(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppId:Ljava/lang/String;

    return-void
.end method

.method public setThirdAppKey(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppKey:Ljava/lang/String;

    return-void
.end method

.method public setThirdChannelId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdChannelId:Ljava/lang/String;

    return-void
.end method

.method public setThirdSdkName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdSdkName:Ljava/lang/String;

    return-void
.end method

.method public toConfigMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppId:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "third_app_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppKey:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "third_app_key"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdChannelId:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    const-string v2, "third_channel_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThirdConfig{thirdSdkName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdSdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdAppId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdAppKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdAppKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdChannelId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->thirdChannelId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->enable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
