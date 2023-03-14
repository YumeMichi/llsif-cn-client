.class Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;
.super Ljava/lang/Object;
.source "GShareInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/GShareInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GShareChannelInfos"
.end annotation


# instance fields
.field public m_lstSharePlatformsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;",
            ">;"
        }
    .end annotation
.end field

.field public m_strChannelID:Ljava/lang/String;

.field public m_strPackageName:Ljava/lang/String;

.field public m_strSignature:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_lstSharePlatformsInfos:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ghome/gshare/GShareInterface$1;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;-><init>()V

    return-void
.end method
