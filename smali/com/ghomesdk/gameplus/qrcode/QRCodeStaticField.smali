.class public Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;
.super Ljava/lang/Object;
.source "QRCodeStaticField.java"


# static fields
.field private static confirmPayQRCodeUrl:Ljava/lang/String;

.field private static qrCodeScanLoginConfirmUrl:Ljava/lang/String;

.field private static qrCodeScanResultUrl:Ljava/lang/String;

.field public static qrcodeActivity:Landroid/app/Activity;

.field public static qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field public static qrcodeExtend:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/gqrcode/scan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrCodeScanResultUrl:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/gqrcode/confirm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrCodeScanLoginConfirmUrl:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/hps4gpay/qrcode/confirm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->confirmPayQRCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfirmPayQRCodeUrl()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->confirmPayQRCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getQrCodeScanLoginConfirmUrl()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrCodeScanLoginConfirmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getQrCodeScanResultUrl()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrCodeScanResultUrl:Ljava/lang/String;

    return-object v0
.end method
