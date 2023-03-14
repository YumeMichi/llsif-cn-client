.class Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;
.super Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/gson/internal/Excluder;->create(Lcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/ghomesdk/gameplus/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/gson/internal/Excluder;ZZLcom/ghomesdk/gameplus/gson/Gson;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->this$0:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$gson:Lcom/ghomesdk/gameplus/gson/Gson;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$type:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/ghomesdk/gameplus/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ghomesdk/gameplus/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$gson:Lcom/ghomesdk/gameplus/gson/Gson;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->this$0:Lcom/ghomesdk/gameplus/gson/internal/Excluder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$type:Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/gson/Gson;->getDelegateAdapter(Lcom/ghomesdk/gameplus/gson/TypeAdapterFactory;Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->delegate:Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->delegate()Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->read(Lcom/ghomesdk/gameplus/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;->nullValue()Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;

    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/gson/internal/Excluder$1;->delegate()Lcom/ghomesdk/gameplus/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/gson/TypeAdapter;->write(Lcom/ghomesdk/gameplus/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
