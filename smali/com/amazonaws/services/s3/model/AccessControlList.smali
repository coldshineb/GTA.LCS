.class public Lcom/amazonaws/services/s3/model/AccessControlList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazonaws/services/s3/model/Grant;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amazonaws/services/s3/model/Owner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->b:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->b:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public final a(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->a:Ljava/util/HashSet;

    new-instance v1, Lcom/amazonaws/services/s3/model/Grant;

    invoke-direct {v1, p1, p2}, Lcom/amazonaws/services/s3/model/Grant;-><init>(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->b:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessControlList [owner="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->b:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
