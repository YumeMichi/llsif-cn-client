.class public Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;
.super Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;
.source "GSharePlatformConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/GSharePlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GShareSinaWBPlatform"
.end annotation


# instance fields
.field private m_strAppKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;-><init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->m_strAppKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->m_strAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->m_strAppKey:Ljava/lang/String;

    return-void
.end method
