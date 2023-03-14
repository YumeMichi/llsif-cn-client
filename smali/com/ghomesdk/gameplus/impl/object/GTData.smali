.class public Lcom/ghomesdk/gameplus/impl/object/GTData;
.super Ljava/lang/Object;
.source "GTData.java"


# instance fields
.field private challenge:Ljava/lang/String;

.field private seccode:Ljava/lang/String;

.field private validate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GTData;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getSeccode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GTData;->seccode:Ljava/lang/String;

    return-object v0
.end method

.method public getValidate()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GTData;->validate:Ljava/lang/String;

    return-object v0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GTData;->challenge:Ljava/lang/String;

    return-void
.end method

.method public setSeccode(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GTData;->seccode:Ljava/lang/String;

    return-void
.end method

.method public setValidate(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GTData;->validate:Ljava/lang/String;

    return-void
.end method
