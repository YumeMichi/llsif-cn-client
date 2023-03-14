.class public Lcom/ghome/gshare/share_media/GShareBaseMedia;
.super Ljava/lang/Object;
.source "GShareBaseMedia.java"


# instance fields
.field private m_strMediaName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareBaseMedia;->m_strMediaName:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareBaseMedia;->m_strMediaName:Ljava/lang/String;

    return-void
.end method
