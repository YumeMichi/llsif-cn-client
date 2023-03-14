.class public final enum Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
.super Ljava/lang/Enum;
.source "PFInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/PFInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WEBVIEW_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

.field public static final enum E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;


# instance fields
.field private m_num:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 147
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const/4 v1, 0x0

    const-string v2, "E_DIDSTARTLOADWEB"

    invoke-direct {v0, v2, v1, v1}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    .line 148
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const/4 v2, 0x1

    const-string v3, "E_DIDLOADENDWEB"

    invoke-direct {v0, v3, v2, v2}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    .line 149
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const/4 v3, 0x2

    const-string v4, "E_FAILEDLOADWEB"

    invoke-direct {v0, v4, v3, v3}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    .line 150
    new-instance v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const/4 v4, 0x3

    const-string v5, "E_URLJUMP"

    invoke-direct {v0, v5, v4, v4}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    const/4 v0, 0x4

    .line 146
    new-array v0, v0, [Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    sget-object v5, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v5, v0, v1

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->$VALUES:[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->m_num:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
    .locals 1

    .line 146
    const-class v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    return-object p0
.end method

.method public static values()[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
    .locals 1

    .line 146
    sget-object v0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->$VALUES:[Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v0}, [Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    return-object v0
.end method


# virtual methods
.method public GetNum()I
    .locals 1

    .line 157
    iget v0, p0, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->m_num:I

    return v0
.end method
