.class public Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;
.super Lcom/ghome/gshare/share_media/GShareBaseMedia;
.source "GShareVendorSDKMusicMedia.java"


# instance fields
.field private m_bmpThumb:Landroid/graphics/Bitmap;

.field private m_strDescription:Ljava/lang/String;

.field private m_strMusicUrl:Ljava/lang/String;

.field private m_strTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/ghome/gshare/share_media/GShareBaseMedia;-><init>()V

    const-string v0, "\u97f3\u9891"

    .line 18
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->setMediaName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_strDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_strMusicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/Bitmap;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_bmpThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_strTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_strDescription:Ljava/lang/String;

    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_strMusicUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_bmpThumb:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->m_strTitle:Ljava/lang/String;

    return-void
.end method
