.class Lextension/ShengQu/GHomeExtension$3$1;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension$3;->callback(ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lextension/ShengQu/GHomeExtension$3;


# direct methods
.method constructor <init>(Lextension/ShengQu/GHomeExtension$3;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$3$1;->this$1:Lextension/ShengQu/GHomeExtension$3;

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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 190
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lextension/ShengQu/GHomeExtension;->b_Logined:Z

    const-string p1, "gh"

    const-string p2, "ghome init need logout"

    .line 191
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p1

    invoke-virtual {p1}, Lextension/ShengQu/GHomeExtension;->logouted()V

    :cond_0
    return-void
.end method
