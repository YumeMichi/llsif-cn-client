.class public Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;
.super Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;
.source "GSharePlatformConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/GSharePlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GShareWeiXinPlatform"
.end annotation


# instance fields
.field private m_strAppID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;-><init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->m_strAppID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->m_strAppID:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->m_strAppID:Ljava/lang/String;

    return-void
.end method
