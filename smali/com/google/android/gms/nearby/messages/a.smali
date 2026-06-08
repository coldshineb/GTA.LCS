.class public Lcom/google/android/gms/nearby/messages/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/MessageType;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/nearby/messages/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/a;->c:Z

    return-object p0
.end method

.method public b()Lcom/google/android/gms/nearby/messages/MessageFilter;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "At least one of the include methods must be called."

    invoke-static {v0, v2}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/nearby/messages/MessageFilter;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/a;->b:Ljava/util/List;

    iget-boolean v4, p0, Lcom/google/android/gms/nearby/messages/a;->c:Z

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(Ljava/util/List;Ljava/util/List;ZB)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
