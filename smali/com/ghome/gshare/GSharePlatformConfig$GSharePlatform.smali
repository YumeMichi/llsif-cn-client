.class public Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;
.super Ljava/lang/Object;
.source "GSharePlatformConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/GSharePlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSharePlatform"
.end annotation


# instance fields
.field private final m_platformType:Lcom/ghome/gshare/GSharePlatformType;

.field private m_strPlatformName:Ljava/lang/String;

.field private m_strRelatedAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_strPlatformName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_strRelatedAppName:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_platformType:Lcom/ghome/gshare/GSharePlatformType;

    .line 73
    iput-object p2, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_strPlatformName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_strRelatedAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlatformName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_strPlatformName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformType()Lcom/ghome/gshare/GSharePlatformType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_platformType:Lcom/ghome/gshare/GSharePlatformType;

    return-object v0
.end method

.method public getRelatedAppName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->m_strRelatedAppName:Ljava/lang/String;

    return-object v0
.end method
