.class public Lcom/google/android/gms/nearby/messages/Strategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/google/android/gms/nearby/messages/Strategy;


# instance fields
.field final a:I

.field final b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final f:I

.field final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/e;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/messages/b;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/b;->a()Lcom/google/android/gms/nearby/messages/Strategy;

    new-instance v0, Lcom/google/android/gms/nearby/messages/b;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/b;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/b;->a(I)Lcom/google/android/gms/nearby/messages/b;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/b;->b(I)Lcom/google/android/gms/nearby/messages/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/b;->a()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->h:Lcom/google/android/gms/nearby/messages/Strategy;

    return-void
.end method

.method constructor <init>(IIIIZII)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->a:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->b:I

    if-nez p2, :cond_0

    iput p7, p0, Lcom/google/android/gms/nearby/messages/Strategy;->g:I

    :goto_0
    iput p4, p0, Lcom/google/android/gms/nearby/messages/Strategy;->d:I

    iput-boolean p5, p0, Lcom/google/android/gms/nearby/messages/Strategy;->e:Z

    if-eqz p5, :cond_1

    iput v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->f:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->c:I

    :goto_1
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->g:I

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->g:I

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->g:I

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    iput v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->f:I

    iput p3, p0, Lcom/google/android/gms/nearby/messages/Strategy;->c:I

    goto :goto_1

    :cond_2
    iput p6, p0, Lcom/google/android/gms/nearby/messages/Strategy;->f:I

    iput p3, p0, Lcom/google/android/gms/nearby/messages/Strategy;->c:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
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
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/Strategy;

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->a:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->g:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->c:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->d:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->f:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->f:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/nearby/messages/e;->a(Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/Parcel;)V

    return-void
.end method
