.class public Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;
.super Ljava/lang/Object;
.source "GetTicketResponse.java"


# instance fields
.field ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;->ticket:Ljava/lang/String;

    return-void
.end method
