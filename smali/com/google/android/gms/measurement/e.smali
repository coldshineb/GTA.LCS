.class public abstract Lcom/google/android/gms/measurement/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/measurement/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/measurement/f;

.field private b:Lcom/google/android/gms/measurement/c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/app/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/f;Lcom/google/android/gms/b/al;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/e;->a:Lcom/google/android/gms/measurement/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/e;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/c;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/measurement/c;-><init>(Lcom/google/android/gms/measurement/e;Lcom/google/android/gms/b/al;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/c;->j()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/e;->b:Lcom/google/android/gms/measurement/c;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/measurement/c;)V
    .locals 0

    return-void
.end method

.method protected final b(Lcom/google/android/gms/measurement/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()Lcom/google/android/gms/measurement/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->b:Lcom/google/android/gms/measurement/c;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/c;->a()Lcom/google/android/gms/measurement/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/e;->b(Lcom/google/android/gms/measurement/c;)V

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->b:Lcom/google/android/gms/measurement/c;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->b:Lcom/google/android/gms/measurement/c;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Lcom/google/android/gms/measurement/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->a:Lcom/google/android/gms/measurement/f;

    return-object v0
.end method
