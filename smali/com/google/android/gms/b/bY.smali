.class public final Lcom/google/android/gms/b/bY;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/b/bU;Lcom/google/android/gms/b/bU;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    invoke-virtual {v0}, Lcom/google/android/gms/b/bW;->c()Lcom/google/android/gms/b/bW;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    :cond_0
    return-void
.end method
