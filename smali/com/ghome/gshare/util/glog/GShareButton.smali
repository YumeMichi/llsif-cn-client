.class public final enum Lcom/ghome/gshare/util/glog/GShareButton;
.super Ljava/lang/Enum;
.source "GShareButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ghome/gshare/util/glog/GShareButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ghome/gshare/util/glog/GShareButton;

.field public static final enum PANEL:Lcom/ghome/gshare/util/glog/GShareButton;

.field public static final enum QQ:Lcom/ghome/gshare/util/glog/GShareButton;

.field public static final enum QZONE:Lcom/ghome/gshare/util/glog/GShareButton;

.field public static final enum SINA:Lcom/ghome/gshare/util/glog/GShareButton;

.field public static final enum WECHAT:Lcom/ghome/gshare/util/glog/GShareButton;

.field public static final enum WECHAT_CIRCLE:Lcom/ghome/gshare/util/glog/GShareButton;


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 11
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareButton;

    const/4 v1, 0x0

    const-string v2, "WECHAT"

    const-string v3, "gshare_button_wechat"

    const-string v4, "\u5fae\u4fe1\u597d\u53cb"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ghome/gshare/util/glog/GShareButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT:Lcom/ghome/gshare/util/glog/GShareButton;

    .line 12
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareButton;

    const/4 v2, 0x1

    const-string v3, "WECHAT_CIRCLE"

    const-string v4, "gshare_button_wechat_circle"

    const-string v5, "\u5fae\u4fe1\u670b\u53cb\u5708"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/ghome/gshare/util/glog/GShareButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT_CIRCLE:Lcom/ghome/gshare/util/glog/GShareButton;

    .line 13
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareButton;

    const/4 v3, 0x2

    const-string v4, "QQ"

    const-string v5, "gshare_button_qq"

    const-string v6, "QQ\u597d\u53cb"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/ghome/gshare/util/glog/GShareButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->QQ:Lcom/ghome/gshare/util/glog/GShareButton;

    .line 14
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareButton;

    const/4 v4, 0x3

    const-string v5, "QZONE"

    const-string v6, "gshare_button_qzone"

    const-string v7, "QQ\u7a7a\u95f4"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/ghome/gshare/util/glog/GShareButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->QZONE:Lcom/ghome/gshare/util/glog/GShareButton;

    .line 15
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareButton;

    const/4 v5, 0x4

    const-string v6, "SINA"

    const-string v7, "gshare_button_sina"

    const-string v8, "\u65b0\u6d6a\u5fae\u535a"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/ghome/gshare/util/glog/GShareButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->SINA:Lcom/ghome/gshare/util/glog/GShareButton;

    .line 16
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareButton;

    const/4 v6, 0x5

    const-string v7, "PANEL"

    const-string v8, "gshare_button_panel"

    const-string v9, "\u5206\u4eab\u9762\u677f"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/ghome/gshare/util/glog/GShareButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->PANEL:Lcom/ghome/gshare/util/glog/GShareButton;

    const/4 v0, 0x6

    .line 10
    new-array v0, v0, [Lcom/ghome/gshare/util/glog/GShareButton;

    sget-object v7, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT:Lcom/ghome/gshare/util/glog/GShareButton;

    aput-object v7, v0, v1

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT_CIRCLE:Lcom/ghome/gshare/util/glog/GShareButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareButton;->QQ:Lcom/ghome/gshare/util/glog/GShareButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareButton;->QZONE:Lcom/ghome/gshare/util/glog/GShareButton;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareButton;->SINA:Lcom/ghome/gshare/util/glog/GShareButton;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareButton;->PANEL:Lcom/ghome/gshare/util/glog/GShareButton;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->$VALUES:[Lcom/ghome/gshare/util/glog/GShareButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/ghome/gshare/util/glog/GShareButton;->id:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/ghome/gshare/util/glog/GShareButton;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ghome/gshare/util/glog/GShareButton;
    .locals 1

    .line 10
    const-class v0, Lcom/ghome/gshare/util/glog/GShareButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/util/glog/GShareButton;

    return-object p0
.end method

.method public static values()[Lcom/ghome/gshare/util/glog/GShareButton;
    .locals 1

    .line 10
    sget-object v0, Lcom/ghome/gshare/util/glog/GShareButton;->$VALUES:[Lcom/ghome/gshare/util/glog/GShareButton;

    invoke-virtual {v0}, [Lcom/ghome/gshare/util/glog/GShareButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ghome/gshare/util/glog/GShareButton;

    return-object v0
.end method
