.class public Lcom/ghomesdk/gameplus/config/Sandbox;
.super Ljava/lang/Object;
.source "Sandbox.java"


# static fields
.field private static fillRealInfo:Z

.field public static used:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportFillRealInfo()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Sandbox;->used:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Sandbox;->fillRealInfo:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static init(Z)V
    .locals 0

    .line 13
    sput-boolean p0, Lcom/ghomesdk/gameplus/config/Sandbox;->fillRealInfo:Z

    return-void
.end method
