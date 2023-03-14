.class public final enum Lcom/greport/glog/util/OSUtils$ROM_TYPE;
.super Ljava/lang/Enum;
.source "OSUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/greport/glog/util/OSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ROM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/greport/glog/util/OSUtils$ROM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/greport/glog/util/OSUtils$ROM_TYPE;

.field public static final enum EMUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

.field public static final enum FLYME:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

.field public static final enum MIUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

.field public static final enum OTHER:Lcom/greport/glog/util/OSUtils$ROM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 58
    new-instance v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    const/4 v1, 0x0

    const-string v2, "MIUI"

    invoke-direct {v0, v2, v1}, Lcom/greport/glog/util/OSUtils$ROM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->MIUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    .line 59
    new-instance v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    const/4 v2, 0x1

    const-string v3, "FLYME"

    invoke-direct {v0, v3, v2}, Lcom/greport/glog/util/OSUtils$ROM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->FLYME:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    .line 60
    new-instance v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    const/4 v3, 0x2

    const-string v4, "EMUI"

    invoke-direct {v0, v4, v3}, Lcom/greport/glog/util/OSUtils$ROM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->EMUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    .line 61
    new-instance v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    const/4 v4, 0x3

    const-string v5, "OTHER"

    invoke-direct {v0, v5, v4}, Lcom/greport/glog/util/OSUtils$ROM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->OTHER:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    sget-object v5, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->MIUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    aput-object v5, v0, v1

    sget-object v1, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->FLYME:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->EMUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->OTHER:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->$VALUES:[Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/greport/glog/util/OSUtils$ROM_TYPE;
    .locals 1

    .line 57
    const-class v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/greport/glog/util/OSUtils$ROM_TYPE;
    .locals 1

    .line 57
    sget-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->$VALUES:[Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    invoke-virtual {v0}, [Lcom/greport/glog/util/OSUtils$ROM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    return-object v0
.end method
