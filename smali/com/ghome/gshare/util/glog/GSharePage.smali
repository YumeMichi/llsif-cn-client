.class public final enum Lcom/ghome/gshare/util/glog/GSharePage;
.super Ljava/lang/Enum;
.source "GSharePage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ghome/gshare/util/glog/GSharePage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ghome/gshare/util/glog/GSharePage;

.field public static final enum AUDIO:Lcom/ghome/gshare/util/glog/GSharePage;

.field public static final enum PIC:Lcom/ghome/gshare/util/glog/GSharePage;

.field public static final enum TEXT:Lcom/ghome/gshare/util/glog/GSharePage;

.field public static final enum UNKNOWN:Lcom/ghome/gshare/util/glog/GSharePage;

.field public static final enum VIDEO:Lcom/ghome/gshare/util/glog/GSharePage;

.field public static final enum WEB:Lcom/ghome/gshare/util/glog/GSharePage;


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 11
    new-instance v0, Lcom/ghome/gshare/util/glog/GSharePage;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    const-string v3, "gshare_page_text"

    const-string v4, "\u6587\u5b57"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ghome/gshare/util/glog/GSharePage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->TEXT:Lcom/ghome/gshare/util/glog/GSharePage;

    .line 12
    new-instance v0, Lcom/ghome/gshare/util/glog/GSharePage;

    const/4 v2, 0x1

    const-string v3, "PIC"

    const-string v4, "gshare_page_pic"

    const-string v5, "\u56fe\u6587"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/ghome/gshare/util/glog/GSharePage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->PIC:Lcom/ghome/gshare/util/glog/GSharePage;

    .line 13
    new-instance v0, Lcom/ghome/gshare/util/glog/GSharePage;

    const/4 v3, 0x2

    const-string v4, "AUDIO"

    const-string v5, "gshare_page_audio"

    const-string v6, "\u97f3\u9891"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/ghome/gshare/util/glog/GSharePage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->AUDIO:Lcom/ghome/gshare/util/glog/GSharePage;

    .line 14
    new-instance v0, Lcom/ghome/gshare/util/glog/GSharePage;

    const/4 v4, 0x3

    const-string v5, "VIDEO"

    const-string v6, "gshare_page_video"

    const-string v7, "\u89c6\u9891"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/ghome/gshare/util/glog/GSharePage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->VIDEO:Lcom/ghome/gshare/util/glog/GSharePage;

    .line 15
    new-instance v0, Lcom/ghome/gshare/util/glog/GSharePage;

    const/4 v5, 0x4

    const-string v6, "WEB"

    const-string v7, "gshare_page_web"

    const-string v8, "\u7f51\u9875"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/ghome/gshare/util/glog/GSharePage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->WEB:Lcom/ghome/gshare/util/glog/GSharePage;

    .line 16
    new-instance v0, Lcom/ghome/gshare/util/glog/GSharePage;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN"

    const-string v8, "gshare_page_unknown"

    const-string v9, "\u672a\u77e5"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/ghome/gshare/util/glog/GSharePage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->UNKNOWN:Lcom/ghome/gshare/util/glog/GSharePage;

    const/4 v0, 0x6

    .line 10
    new-array v0, v0, [Lcom/ghome/gshare/util/glog/GSharePage;

    sget-object v7, Lcom/ghome/gshare/util/glog/GSharePage;->TEXT:Lcom/ghome/gshare/util/glog/GSharePage;

    aput-object v7, v0, v1

    sget-object v1, Lcom/ghome/gshare/util/glog/GSharePage;->PIC:Lcom/ghome/gshare/util/glog/GSharePage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ghome/gshare/util/glog/GSharePage;->AUDIO:Lcom/ghome/gshare/util/glog/GSharePage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ghome/gshare/util/glog/GSharePage;->VIDEO:Lcom/ghome/gshare/util/glog/GSharePage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ghome/gshare/util/glog/GSharePage;->WEB:Lcom/ghome/gshare/util/glog/GSharePage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ghome/gshare/util/glog/GSharePage;->UNKNOWN:Lcom/ghome/gshare/util/glog/GSharePage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->$VALUES:[Lcom/ghome/gshare/util/glog/GSharePage;

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
    iput-object p3, p0, Lcom/ghome/gshare/util/glog/GSharePage;->id:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/ghome/gshare/util/glog/GSharePage;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ghome/gshare/util/glog/GSharePage;
    .locals 1

    .line 10
    const-class v0, Lcom/ghome/gshare/util/glog/GSharePage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/util/glog/GSharePage;

    return-object p0
.end method

.method public static values()[Lcom/ghome/gshare/util/glog/GSharePage;
    .locals 1

    .line 10
    sget-object v0, Lcom/ghome/gshare/util/glog/GSharePage;->$VALUES:[Lcom/ghome/gshare/util/glog/GSharePage;

    invoke-virtual {v0}, [Lcom/ghome/gshare/util/glog/GSharePage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ghome/gshare/util/glog/GSharePage;

    return-object v0
.end method
