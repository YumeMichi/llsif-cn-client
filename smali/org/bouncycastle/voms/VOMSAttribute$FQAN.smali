.class public Lorg/bouncycastle/voms/VOMSAttribute$FQAN;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/voms/VOMSAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FQAN"
.end annotation


# instance fields
.field capability:Ljava/lang/String;

.field fqan:Ljava/lang/String;

.field group:Ljava/lang/String;

.field role:Ljava/lang/String;

.field final synthetic this$0:Lorg/bouncycastle/voms/VOMSAttribute;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/voms/VOMSAttribute;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->this$0:Lorg/bouncycastle/voms/VOMSAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/voms/VOMSAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->this$0:Lorg/bouncycastle/voms/VOMSAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCapability()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    return-object v0
.end method

.method public getFQAN()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Capability="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    return-object v0
.end method

.method protected split()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    const-string v1, "/Role="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6

    const-string v2, "/Capability="

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v0, v3

    :cond_2
    iput-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    if-gez v1, :cond_3

    move-object v0, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move-object v0, v3

    :cond_5
    iput-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->getFQAN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
