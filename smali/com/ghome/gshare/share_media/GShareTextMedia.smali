.class public Lcom/ghome/gshare/share_media/GShareTextMedia;
.super Lcom/ghome/gshare/share_media/GShareBaseMedia;
.source "GShareTextMedia.java"


# instance fields
.field private m_strText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/ghome/gshare/share_media/GShareBaseMedia;-><init>()V

    const-string v0, "\u6587\u5b57"

    .line 13
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/share_media/GShareTextMedia;->setMediaName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ghome/gshare/share_media/GShareTextMedia;->m_strText:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ghome/gshare/share_media/GShareTextMedia;->m_strText:Ljava/lang/String;

    return-void
.end method
