.class public final enum Lcom/ghome/gshare/record/RecordStatus;
.super Ljava/lang/Enum;
.source "RecordStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ghome/gshare/record/RecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ghome/gshare/record/RecordStatus;

.field public static final enum IDLE:Lcom/ghome/gshare/record/RecordStatus;

.field public static final enum RECORDING:Lcom/ghome/gshare/record/RecordStatus;

.field public static final enum STOPRECORDING:Lcom/ghome/gshare/record/RecordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/ghome/gshare/record/RecordStatus;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/ghome/gshare/record/RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/record/RecordStatus;->IDLE:Lcom/ghome/gshare/record/RecordStatus;

    .line 10
    new-instance v0, Lcom/ghome/gshare/record/RecordStatus;

    const/4 v2, 0x1

    const-string v3, "RECORDING"

    invoke-direct {v0, v3, v2}, Lcom/ghome/gshare/record/RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/record/RecordStatus;->RECORDING:Lcom/ghome/gshare/record/RecordStatus;

    .line 11
    new-instance v0, Lcom/ghome/gshare/record/RecordStatus;

    const/4 v3, 0x2

    const-string v4, "STOPRECORDING"

    invoke-direct {v0, v4, v3}, Lcom/ghome/gshare/record/RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/record/RecordStatus;->STOPRECORDING:Lcom/ghome/gshare/record/RecordStatus;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/ghome/gshare/record/RecordStatus;

    sget-object v4, Lcom/ghome/gshare/record/RecordStatus;->IDLE:Lcom/ghome/gshare/record/RecordStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ghome/gshare/record/RecordStatus;->RECORDING:Lcom/ghome/gshare/record/RecordStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ghome/gshare/record/RecordStatus;->STOPRECORDING:Lcom/ghome/gshare/record/RecordStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ghome/gshare/record/RecordStatus;->$VALUES:[Lcom/ghome/gshare/record/RecordStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ghome/gshare/record/RecordStatus;
    .locals 1

    .line 8
    const-class v0, Lcom/ghome/gshare/record/RecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/record/RecordStatus;

    return-object p0
.end method

.method public static values()[Lcom/ghome/gshare/record/RecordStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/ghome/gshare/record/RecordStatus;->$VALUES:[Lcom/ghome/gshare/record/RecordStatus;

    invoke-virtual {v0}, [Lcom/ghome/gshare/record/RecordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ghome/gshare/record/RecordStatus;

    return-object v0
.end method
