.class public final enum Lcom/reyun/tracking/a/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/reyun/tracking/a/j;

.field private static final synthetic b:[Lcom/reyun/tracking/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/reyun/tracking/a/j;

    const/4 v1, 0x0

    const-string v2, "Tracking"

    invoke-direct {v0, v2, v1}, Lcom/reyun/tracking/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/reyun/tracking/a/j;

    sget-object v2, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/reyun/tracking/a/j;->b:[Lcom/reyun/tracking/a/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/reyun/tracking/a/j;
    .locals 1

    const-class v0, Lcom/reyun/tracking/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/reyun/tracking/a/j;

    return-object p0
.end method

.method public static values()[Lcom/reyun/tracking/a/j;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/a/j;->b:[Lcom/reyun/tracking/a/j;

    invoke-virtual {v0}, [Lcom/reyun/tracking/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reyun/tracking/a/j;

    return-object v0
.end method
