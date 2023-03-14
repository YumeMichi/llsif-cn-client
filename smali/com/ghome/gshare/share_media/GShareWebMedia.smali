.class public Lcom/ghome/gshare/share_media/GShareWebMedia;
.super Lcom/ghome/gshare/share_media/GShareBaseMedia;
.source "GShareWebMedia.java"


# instance fields
.field private m_bmpThumb:Landroid/graphics/Bitmap;

.field private m_strDescription:Ljava/lang/String;

.field private m_strTitle:Ljava/lang/String;

.field private m_strWebPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/ghome/gshare/share_media/GShareBaseMedia;-><init>()V

    const-string v0, "\u7f51\u9875"

    .line 12
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/share_media/GShareWebMedia;->setMediaName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_strDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/Bitmap;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_bmpThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_strTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWebPageUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_strWebPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_strDescription:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_bmpThumb:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_strTitle:Ljava/lang/String;

    return-void
.end method

.method public setWebPageUrl(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;->m_strWebPageUrl:Ljava/lang/String;

    return-void
.end method
