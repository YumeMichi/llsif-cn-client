.class public Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;
.super Ljava/lang/Object;
.source "CaptchaParams.java"


# instance fields
.field public gtData:Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGtData()Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;->gtData:Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;

    return-object v0
.end method

.method public setGtData(Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;->gtData:Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;

    return-void
.end method
