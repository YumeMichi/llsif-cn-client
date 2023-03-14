.class public Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;
.super Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;
.source "GShareSystemPrimalImageMedia.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "image/*"

    .line 7
    invoke-direct {p0, v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;-><init>(Ljava/lang/String;)V

    const-string v0, "\u56fe\u7247"

    .line 8
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->setMediaName(Ljava/lang/String;)V

    return-void
.end method
