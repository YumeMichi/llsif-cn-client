.class public Lcom/ghomesdk/gameplus/utils/EnvUtil;
.super Ljava/lang/Object;
.source "EnvUtil.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 14
    sget-object v0, Lcom/ghomesdk/gameplus/utils/EnvUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .line 10
    sput-object p0, Lcom/ghomesdk/gameplus/utils/EnvUtil;->mContext:Landroid/content/Context;

    return-void
.end method
