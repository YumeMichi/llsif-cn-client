.class Lextension/ShengQu/GHomeExtension$1my_payCallback;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension;->BuyItem(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "my_payCallback"
.end annotation


# instance fields
.field public product:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$1my_payCallback;->product:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 475
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    const/4 p3, 0x3

    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$1my_payCallback;->product:Ljava/lang/String;

    const-string v1, "{ \"response_data\":{\"transactionIdentifier\":\"transactionId\", \"data\":\"data\"},\"transactionIdentifier\":\"transactionId\",\"data\":\"data\",\"status_code\" : 200}"

    invoke-virtual {p1, p3, p2, v0, v1}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    const/4 p3, 0x5

    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$1my_payCallback;->product:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p1, p3, p2, v0, v1}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
