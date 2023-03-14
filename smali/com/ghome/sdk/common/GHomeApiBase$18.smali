.class Lcom/ghome/sdk/common/GHomeApiBase$18;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->reportRole(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$18;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    const-string p3, "GHomeApiBase"

    if-nez p1, :cond_0

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u4e0a\u62a5\u6210\u529f"

    .line 584
    invoke-static {p3, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89d2\u8272\u4fe1\u606f\u4e0a\u62a5\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
