.class public Lcom/gbase/gameplus/upgrade/MessageObject;
.super Ljava/lang/Object;
.source "MessageObject.java"


# instance fields
.field private agr2:J

.field private arg1:J

.field private strDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgr2()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/gbase/gameplus/upgrade/MessageObject;->agr2:J

    return-wide v0
.end method

.method public getArg1()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/gbase/gameplus/upgrade/MessageObject;->arg1:J

    return-wide v0
.end method

.method public getStrDesc()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/MessageObject;->strDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setAgr2(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/gbase/gameplus/upgrade/MessageObject;->agr2:J

    return-void
.end method

.method public setArg1(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/gbase/gameplus/upgrade/MessageObject;->arg1:J

    return-void
.end method

.method public setStrDesc(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/MessageObject;->strDesc:Ljava/lang/String;

    return-void
.end method
