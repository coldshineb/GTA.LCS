.class public final Lcom/google/android/gms/nearby/messages/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/nearby/messages/b;->a:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/android/gms/nearby/messages/b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/b;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/nearby/messages/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/nearby/messages/Strategy;
    .locals 8

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/nearby/messages/b;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/nearby/messages/b;->a:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Discovery mode must be DISCOVERY_MODE_DEFAULT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/Strategy;

    iget v3, p0, Lcom/google/android/gms/nearby/messages/b;->b:I

    iget v6, p0, Lcom/google/android/gms/nearby/messages/b;->d:I

    iget v7, p0, Lcom/google/android/gms/nearby/messages/b;->a:I

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/Strategy;-><init>(IIIIZII)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/gms/nearby/messages/b;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/nearby/messages/b;->d:I

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/nearby/messages/b;
    .locals 6

    const v5, 0x7fffffff

    const/4 v4, 0x1

    const-string v0, "mTtlSeconds(%d) must either be TTL_SECONDS_INFINITE, or it must be between 1 and TTL_SECONDS_MAX(%d) inclusive"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/f;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Lcom/google/android/gms/nearby/messages/b;->b:I

    return-object p0
.end method
