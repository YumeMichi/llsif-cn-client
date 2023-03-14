.class public Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;
.super Lcom/ghome/gshare/share_media/GShareBaseMedia;
.source "GShareSystemPrimalMedia.java"


# instance fields
.field private m_listMediaPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_strDescription:Ljava/lang/String;

.field private m_strMediaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/ghome/gshare/share_media/GShareBaseMedia;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_strMediaType:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_strDescription:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_listMediaPath:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_strMediaType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMediaPath(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_listMediaPath:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearMediaPath()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_listMediaPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_strDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_listMediaPath:Ljava/util/List;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_strMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->m_strDescription:Ljava/lang/String;

    return-void
.end method
