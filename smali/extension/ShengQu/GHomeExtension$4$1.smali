.class Lextension/ShengQu/GHomeExtension$4$1;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextension/ShengQu/GHomeExtension$4;


# direct methods
.method constructor <init>(Lextension/ShengQu/GHomeExtension$4;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$4$1;->this$0:Lextension/ShengQu/GHomeExtension$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    .line 236
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v0

    .line 237
    iget-boolean v1, v0, Lextension/ShengQu/GHomeExtension;->b_Logined:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 240
    :cond_0
    iput p1, v0, Lextension/ShengQu/GHomeExtension;->ghomeLoginCode:I

    .line 241
    iput-object p2, v0, Lextension/ShengQu/GHomeExtension;->ghomeLoginMsg:Ljava/lang/String;

    .line 242
    iput-object p3, v0, Lextension/ShengQu/GHomeExtension;->ghomeLoginData:Ljava/util/Map;

    .line 243
    iput-boolean v2, v0, Lextension/ShengQu/GHomeExtension;->b_LoginCallBack:Z

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, v0, Lextension/ShengQu/GHomeExtension;->b_Dologin:Z

    return-void
.end method
