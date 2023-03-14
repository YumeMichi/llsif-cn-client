.class public final Lcom/sina/weibo/sdk/a/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sina/weibo/sdk/a/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final U:I = 0x1

.field public static final V:I = 0x2

.field public static final W:I = 0x3

.field private static final synthetic X:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [I

    sget v1, Lcom/sina/weibo/sdk/a/c$b;->U:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/sina/weibo/sdk/a/c$b;->V:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/sina/weibo/sdk/a/c$b;->W:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/sina/weibo/sdk/a/c$b;->X:[I

    return-void
.end method

.method public static m()[I
    .locals 1

    .line 31
    sget-object v0, Lcom/sina/weibo/sdk/a/c$b;->X:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
