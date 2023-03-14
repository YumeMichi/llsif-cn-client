.class public Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;
.super Ljava/lang/Object;
.source "GameAppChannelInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appPackage:Ljava/lang/String;

.field private appVersionCode:I

.field private appVersionName:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private ext3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appPackage:Ljava/lang/String;

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appVersionCode:I

    .line 16
    iput-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appVersionName:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->channel:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext1:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext2:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appVersionCode:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext3:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appVersionCode:I

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->channel:Ljava/lang/String;

    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext1:Ljava/lang/String;

    return-void
.end method

.method public setExt2(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext2:Ljava/lang/String;

    return-void
.end method

.method public setExt3(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/snda/ghome/sdk/gameapp/channel/GameAppChannelInfo;->ext3:Ljava/lang/String;

    return-void
.end method
