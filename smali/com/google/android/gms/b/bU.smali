.class public abstract Lcom/google/android/gms/b/bU;
.super Lcom/google/android/gms/b/bZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/b/bU",
        "<TM;>;>",
        "Lcom/google/android/gms/b/bZ;"
    }
.end annotation


# instance fields
.field protected f:Lcom/google/android/gms/b/bW;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/bZ;-><init>()V

    return-void
.end method

.method private e()Lcom/google/android/gms/b/bU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/b/bZ;->b()Lcom/google/android/gms/b/bZ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/bU;

    invoke-static {p0, v0}, Lcom/google/android/gms/b/bY;->a(Lcom/google/android/gms/b/bU;Lcom/google/android/gms/b/bU;)V

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    invoke-virtual {v1}, Lcom/google/android/gms/b/bW;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/bW;->a(I)Lcom/google/android/gms/b/bX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/b/bX;->a()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method

.method public a(Lcom/google/android/gms/b/bS;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    invoke-virtual {v1}, Lcom/google/android/gms/b/bW;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/bU;->f:Lcom/google/android/gms/b/bW;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/bW;->a(I)Lcom/google/android/gms/b/bX;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/b/bX;->a(Lcom/google/android/gms/b/bS;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/google/android/gms/b/bZ;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/bU;->e()Lcom/google/android/gms/b/bU;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/bU;->e()Lcom/google/android/gms/b/bU;

    move-result-object v0

    return-object v0
.end method
