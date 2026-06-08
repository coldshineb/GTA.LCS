.class final Lcom/google/android/gms/measurement/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/c;

.field private synthetic b:Lcom/google/android/gms/measurement/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/f;Lcom/google/android/gms/measurement/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/g;->b:Lcom/google/android/gms/measurement/f;

    iput-object p2, p0, Lcom/google/android/gms/measurement/g;->a:Lcom/google/android/gms/measurement/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/g;->a:Lcom/google/android/gms/measurement/c;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/c;->h()Lcom/google/android/gms/measurement/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/g;->a:Lcom/google/android/gms/measurement/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/e;->a(Lcom/google/android/gms/measurement/c;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/g;->b:Lcom/google/android/gms/measurement/f;

    invoke-static {v0}, Lcom/google/android/gms/measurement/f;->a(Lcom/google/android/gms/measurement/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/g;->b:Lcom/google/android/gms/measurement/f;

    iget-object v1, p0, Lcom/google/android/gms/measurement/g;->a:Lcom/google/android/gms/measurement/c;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/f;->a(Lcom/google/android/gms/measurement/f;Lcom/google/android/gms/measurement/c;)V

    return-void
.end method
