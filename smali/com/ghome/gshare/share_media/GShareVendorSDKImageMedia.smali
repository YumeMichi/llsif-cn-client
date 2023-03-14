.class public Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;
.super Lcom/ghome/gshare/share_media/GShareBaseMedia;
.source "GShareVendorSDKImageMedia.java"


# instance fields
.field private m_bmpImage:Landroid/graphics/Bitmap;

.field private m_strDescription:Ljava/lang/String;

.field private m_strTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/ghome/gshare/share_media/GShareBaseMedia;-><init>()V

    const-string v0, "\u56fe\u7247"

    .line 17
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->setMediaName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->m_strDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->m_bmpImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->m_strTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->m_strDescription:Ljava/lang/String;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->m_bmpImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->m_strTitle:Ljava/lang/String;

    return-void
.end method
