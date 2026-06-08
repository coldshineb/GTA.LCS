.class public final Lcom/google/android/gms/appdatasearch/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/appdatasearch/a;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .locals 10

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/appdatasearch/a;->c:Z

    iget v4, p0, Lcom/google/android/gms/appdatasearch/a;->d:I

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/google/android/gms/appdatasearch/a;->e:Ljava/util/List;

    iget-object v8, p0, Lcom/google/android/gms/appdatasearch/a;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/appdatasearch/Feature;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/gms/appdatasearch/Feature;

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/appdatasearch/Feature;[ILjava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/appdatasearch/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/appdatasearch/a;->c:Z

    return-object p0
.end method
