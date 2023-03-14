.class Lcom/reyun/tracking/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/a/g;->a:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/reyun/tracking/a/g;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/reyun/tracking/a/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/reyun/tracking/a/g;->b:I

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/reyun/tracking/a/g;->a:Lorg/json/JSONArray;

    iget v1, p0, Lcom/reyun/tracking/a/g;->b:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/reyun/tracking/a/g;->a:Lorg/json/JSONArray;

    iget v2, p0, Lcom/reyun/tracking/a/g;->b:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/a/g;->a:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/reyun/tracking/a/g;->b:I

    return-void
.end method

.method public c()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/a/g;->a:Lorg/json/JSONArray;

    return-object v0
.end method
