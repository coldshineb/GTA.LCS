.class public abstract Lcom/google/android/gms/b/bZ;
.super Ljava/lang/Object;


# instance fields
.field protected volatile g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/bZ;->g:I

    return-void
.end method

.method public static final a(Lcom/google/android/gms/b/bZ;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/b/bZ;->d()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/b/bS;->a([BII)Lcom/google/android/gms/b/bS;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/b/bZ;->a(Lcom/google/android/gms/b/bS;)V

    invoke-virtual {v1}, Lcom/google/android/gms/b/bS;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/gms/b/bS;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/b/bZ;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/bZ;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/bZ;->g:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/bZ;->d()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/b/bZ;->g:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/bZ;->b()Lcom/google/android/gms/b/bZ;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/bZ;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/b/bZ;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/app/a;->a(Lcom/google/android/gms/b/bZ;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
