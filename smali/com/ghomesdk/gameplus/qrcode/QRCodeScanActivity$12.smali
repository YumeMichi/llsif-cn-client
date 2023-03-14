.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$12;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$12;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method
