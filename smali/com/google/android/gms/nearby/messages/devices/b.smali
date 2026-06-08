.class public final Lcom/google/android/gms/nearby/messages/devices/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/nearby/messages/devices/c;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/nearby/messages/devices/c;

    array-length v0, p1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Bytes must be a namespace plus instance ID (16 bytes)."

    invoke-static {v0, v2}, Landroid/support/v4/app/f;->b(ZLjava/lang/Object;)V

    invoke-direct {v1, p1}, Lcom/google/android/gms/nearby/messages/devices/c;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/nearby/messages/devices/b;->a:Lcom/google/android/gms/nearby/messages/devices/c;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/devices/b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/devices/b;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/b;->a:Lcom/google/android/gms/nearby/messages/devices/c;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/devices/b;->a:Lcom/google/android/gms/nearby/messages/devices/c;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/devices/b;->a:Lcom/google/android/gms/nearby/messages/devices/c;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EddystoneUid{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/devices/b;->a:Lcom/google/android/gms/nearby/messages/devices/c;

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/messages/devices/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
