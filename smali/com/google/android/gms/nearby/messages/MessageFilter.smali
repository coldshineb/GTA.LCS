.class public Lcom/google/android/gms/nearby/messages/MessageFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/MessageType;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/d;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/MessageFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/messages/a;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/a;->a()Lcom/google/android/gms/nearby/messages/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/a;->b()Lcom/google/android/gms/nearby/messages/MessageFilter;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/MessageType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->a:I

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->b:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->d:Z

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/MessageType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ZB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/MessageType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->b:Ljava/util/List;

    return-object v0
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->d:Z

    return v0
.end method

.method final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->c:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageFilter;

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;->d:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;->b:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->b:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->c:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageFilter{includeAllMyTypes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/nearby/messages/d;->a(Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/os/Parcel;)V

    return-void
.end method
