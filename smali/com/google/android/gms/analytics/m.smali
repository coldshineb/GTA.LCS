.class public Lcom/google/android/gms/analytics/m;
.super Lcom/google/android/gms/measurement/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/e",
        "<",
        "Lcom/google/android/gms/analytics/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/A;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/A;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/A;->g()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/A;->c()Lcom/google/android/gms/b/al;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/e;-><init>(Lcom/google/android/gms/measurement/f;Lcom/google/android/gms/b/al;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/internal/A;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/measurement/c;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/b/aa;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/c;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/d;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/b/aa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/A;->o()Lcom/google/android/gms/analytics/internal/S;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/S;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/aa;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/m;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/b/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/A;->n()Lcom/google/android/gms/analytics/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/aa;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/aa;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/m;->b:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/n;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/m;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/l;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/l;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/m;->i()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/n;

    iget-object v2, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/n;-><init>(Lcom/google/android/gms/analytics/internal/A;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final f()Lcom/google/android/gms/analytics/internal/A;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/internal/A;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/c;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/m;->h()Lcom/google/android/gms/measurement/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/c;->a()Lcom/google/android/gms/measurement/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/A;->p()Lcom/google/android/gms/analytics/internal/L;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/L;->b()Lcom/google/android/gms/b/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/c;->a(Lcom/google/android/gms/measurement/d;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/A;->q()Lcom/google/android/gms/analytics/internal/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ad;->b()Lcom/google/android/gms/b/by;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/c;->a(Lcom/google/android/gms/measurement/d;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/m;->b(Lcom/google/android/gms/measurement/c;)V

    return-object v0
.end method
