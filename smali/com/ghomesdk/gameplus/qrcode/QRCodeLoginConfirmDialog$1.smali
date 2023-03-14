.class Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$1;
.super Ljava/lang/Object;
.source "QRCodeLoginConfirmDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->reportCancelLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$1;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method
