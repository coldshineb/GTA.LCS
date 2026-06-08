.class public final Lcom/google/android/gms/fitness/data/Value;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:F

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field

.field private g:[I

.field private h:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/u;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->a:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    iput p4, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Value;->e:Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/fitness/data/Value;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Value;->g:[I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Value;->h:[F

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v1, Landroid/support/v4/e/a;

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/support/v4/e/a;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private i()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "Value is not in int format"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in string format"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()[I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in int list format"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->g:[I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()[F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float list format"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->h:[F

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float map format"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    return v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->a:I

    return v0
.end method

.method final d()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Value;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Value;->c:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->i()I

    move-result v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->i()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->j()F

    move-result v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->j()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->n()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->n()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->l()[I

    move-result-object v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->l()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->m()[F

    move-result-object v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->m()[F

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final f()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method final g()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->g:[I

    return-object v0
.end method

.method final h()[F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->h:[F

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->g:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->h:[F

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    if-nez v0, :cond_0

    const-string v0, "unset"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->j()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->e:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->f:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->l()[I

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->m()[F

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/data/u;->a(Lcom/google/android/gms/fitness/data/Value;Landroid/os/Parcel;)V

    return-void
.end method
