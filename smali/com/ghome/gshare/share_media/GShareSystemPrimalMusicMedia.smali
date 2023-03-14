.class public Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;
.super Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;
.source "GShareSystemPrimalMusicMedia.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "audio/*"

    .line 7
    invoke-direct {p0, v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;-><init>(Ljava/lang/String;)V

    const-string v0, "\u97f3\u9891"

    .line 8
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;->setMediaName(Ljava/lang/String;)V

    return-void
.end method
