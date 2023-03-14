.class Lcom/ghomesdk/gameplus/gson/Gson$3;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/gson/Gson;->floatAdapter(Z)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/gson/Gson;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/gson/Gson;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/Gson$3;->this$0:Lcom/ghomesdk/gameplus/gson/Gson;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->peek()Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ghomesdk/gameplus/gson/stream/JsonToken;->NULL:Lcom/ghomesdk/gameplus/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/gson/Gson$3;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->nullValue()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 316
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    .line 317
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/gson/Gson;->checkValidFloatingPoint(D)V

    .line 318
    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/Gson$3;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
