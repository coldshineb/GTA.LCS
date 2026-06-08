.class public final Landroid/support/v7/internal/widget/W;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v7/internal/widget/W;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/support/v7/internal/widget/X;

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I


# instance fields
.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/internal/widget/W;->a:Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/internal/widget/W;->b:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/W;->c:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/support/v7/internal/widget/X;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/X;-><init>(I)V

    sput-object v0, Landroid/support/v7/internal/widget/W;->d:Landroid/support/v7/internal/widget/X;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/W;->e:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/v7/internal/widget/W;->f:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/v7/internal/widget/W;->g:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/v7/internal/widget/W;->h:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/support/v7/internal/widget/W;->i:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/support/v7/internal/widget/W;->j:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 4
        0x7f020039
        0x7f020037
        0x7f020000
    .end array-data

    :array_1
    .array-data 4
        0x7f020013
        0x7f020016
        0x7f02001d
        0x7f020015
        0x7f020014
        0x7f02001c
        0x7f020017
        0x7f020018
        0x7f02001b
        0x7f02001a
        0x7f020019
        0x7f02001e
    .end array-data

    :array_2
    .array-data 4
        0x7f020036
        0x7f020038
        0x7f02000f
        0x7f020035
    .end array-data

    :array_3
    .array-data 4
        0x7f02002d
        0x7f02000d
        0x7f02002c
    .end array-data

    :array_4
    .array-data 4
        0x7f020012
        0x7f020033
        0x7f02003a
        0x7f02002f
        0x7f020030
        0x7f02002e
        0x7f020032
        0x7f020031
        0x7f020005
        0x7f020001
    .end array-data

    :array_5
    .array-data 4
        0x7f020002
        0x7f020006
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/W;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/support/v7/internal/widget/W;->f:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/W;->e:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/W;->g:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/W;->i:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/W;->h:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/W;->j:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02000e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v7/internal/widget/W;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/W;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/W;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v7/internal/widget/W;
    .locals 2

    sget-object v0, Landroid/support/v7/internal/widget/W;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/W;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/widget/W;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/W;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/support/v7/internal/widget/W;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Landroid/support/v7/internal/widget/W;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    sget-object v0, Landroid/support/v7/internal/widget/W;->d:Landroid/support/v7/internal/widget/X;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/X;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Landroid/support/v7/internal/widget/W;->d:Landroid/support/v7/internal/widget/X;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v7/internal/widget/X;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/google/android/gms/games/appcontent/g;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v0, p1, Lcom/google/android/gms/games/appcontent/g;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-boolean v0, p1, Lcom/google/android/gms/games/appcontent/g;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/games/appcontent/g;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/support/v7/internal/widget/W;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private static a([II)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/W;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/W;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p1}, Landroid/support/v4/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/W;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/support/v4/b/a/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const v2, 0x7f020031

    if-ne p1, v2, :cond_2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0, v1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    const v2, 0x7f02000e

    if-ne p1, v2, :cond_5

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const v2, 0x7f02000d

    invoke-virtual {p0, v2, v4}, Landroid/support/v7/internal/widget/W;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const v3, 0x7f02000f

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/internal/widget/W;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/W;->a(ILandroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    move-object v0, v1

    goto :goto_1
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)Z
    .locals 8

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/internal/widget/W;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    sget-object v3, Landroid/support/v7/internal/widget/W;->e:[I

    invoke-static {v3, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v3

    if-eqz v3, :cond_2

    const v5, 0x7f010055

    move v3, v4

    move v6, v2

    :goto_1
    if-eqz v6, :cond_5

    invoke-static {v0, v5}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v0, v7}, Landroid/support/v7/internal/widget/W;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    if-eq v3, v4, :cond_1

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/support/v7/internal/widget/W;->g:[I

    invoke-static {v3, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v3

    if-eqz v3, :cond_3

    const v5, 0x7f010056

    move v3, v4

    move v6, v2

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/support/v7/internal/widget/W;->h:[I

    invoke-static {v3, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v3

    if-eqz v3, :cond_4

    const v5, 0x1010031

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v3, v4

    move v6, v2

    goto :goto_1

    :cond_4
    const v3, 0x7f020021

    if-ne p1, v3, :cond_6

    const v5, 0x1010030

    const v3, 0x42233333    # 40.8f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v6, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v3, v4

    move v5, v1

    move v6, v1

    goto :goto_1
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 11

    const v10, 0x7f010055

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/W;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/W;->l:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/widget/W;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :goto_1
    if-nez v1, :cond_10

    const v2, 0x7f020012

    if-ne p1, v2, :cond_4

    new-array v1, v9, [[I

    new-array v2, v9, [I

    sget-object v3, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v3, v1, v6

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    sget-object v3, Landroid/support/v7/internal/widget/T;->g:[I

    aput-object v3, v1, v7

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    sget-object v3, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v3, v1, v8

    const v3, 0x7f010056

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/W;->l:Landroid/util/SparseArray;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/v7/internal/widget/W;->l:Landroid/util/SparseArray;

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/W;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const v2, 0x7f020032

    if-ne p1, v2, :cond_5

    new-array v1, v9, [[I

    new-array v2, v9, [I

    sget-object v3, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v3, v1, v6

    const v3, 0x1010030

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v0, v3, v4}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v2, v6

    sget-object v3, Landroid/support/v7/internal/widget/T;->e:[I

    aput-object v3, v1, v7

    const v3, 0x7f010056

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v3, v4}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v2, v7

    sget-object v3, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v3, v1, v8

    const v3, 0x1010030

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v3, v4}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;IF)I

    move-result v0

    aput v0, v2, v8

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_2

    :cond_5
    const v2, 0x7f020031

    if-ne p1, v2, :cond_7

    new-array v1, v9, [[I

    new-array v2, v9, [I

    const v3, 0x7f010059

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v4, v1, v6

    aget-object v4, v1, v6

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v2, v6

    sget-object v4, Landroid/support/v7/internal/widget/T;->e:[I

    aput-object v4, v1, v7

    const v4, 0x7f010056

    invoke-static {v0, v4}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v7

    sget-object v0, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v0, v1, v8

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    aput v0, v2, v8

    :goto_3
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    :cond_6
    sget-object v3, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v3, v1, v6

    const v3, 0x7f010059

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    sget-object v3, Landroid/support/v7/internal/widget/T;->e:[I

    aput-object v3, v1, v7

    const v3, 0x7f010056

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    sget-object v3, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v3, v1, v8

    const v3, 0x7f010059

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    goto :goto_3

    :cond_7
    const v2, 0x7f020005

    if-eq p1, v2, :cond_8

    const v2, 0x7f020001

    if-ne p1, v2, :cond_9

    :cond_8
    const/4 v1, 0x4

    new-array v1, v1, [[I

    const/4 v2, 0x4

    new-array v2, v2, [I

    const v3, 0x7f010058

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x7f010057

    invoke-static {v0, v4}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v5, v1, v6

    const v5, 0x7f010058

    invoke-static {v0, v5}, Landroid/support/v7/internal/widget/T;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v6

    sget-object v0, Landroid/support/v7/internal/widget/T;->d:[I

    aput-object v0, v1, v7

    invoke-static {v4, v3}, Landroid/support/v4/app/a;->a(II)I

    move-result v0

    aput v0, v2, v7

    sget-object v0, Landroid/support/v7/internal/widget/T;->b:[I

    aput-object v0, v1, v8

    invoke-static {v4, v3}, Landroid/support/v4/app/a;->a(II)I

    move-result v0

    aput v0, v2, v8

    sget-object v0, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v0, v1, v9

    aput v3, v2, v9

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    :cond_9
    const v2, 0x7f02002f

    if-eq p1, v2, :cond_a

    const v2, 0x7f020030

    if-ne p1, v2, :cond_b

    :cond_a
    new-array v1, v9, [[I

    new-array v2, v9, [I

    sget-object v3, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v3, v1, v6

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    sget-object v3, Landroid/support/v7/internal/widget/T;->g:[I

    aput-object v3, v1, v7

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    sget-object v3, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v3, v1, v8

    const v3, 0x7f010056

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    :cond_b
    sget-object v2, Landroid/support/v7/internal/widget/W;->f:[I

    invoke-static {v2, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    sget-object v2, Landroid/support/v7/internal/widget/W;->i:[I

    invoke-static {v2, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v1, p0, Landroid/support/v7/internal/widget/W;->m:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_d

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f010056

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x7

    new-array v3, v3, [[I

    const/4 v4, 0x7

    new-array v4, v4, [I

    sget-object v5, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v5, v3, v6

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, v4, v6

    sget-object v0, Landroid/support/v7/internal/widget/T;->b:[I

    aput-object v0, v3, v7

    aput v2, v4, v7

    sget-object v0, Landroid/support/v7/internal/widget/T;->c:[I

    aput-object v0, v3, v8

    aput v2, v4, v8

    sget-object v0, Landroid/support/v7/internal/widget/T;->d:[I

    aput-object v0, v3, v9

    aput v2, v4, v9

    const/4 v0, 0x4

    sget-object v5, Landroid/support/v7/internal/widget/T;->e:[I

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput v2, v4, v0

    const/4 v0, 0x5

    sget-object v5, Landroid/support/v7/internal/widget/T;->f:[I

    aput-object v5, v3, v0

    const/4 v0, 0x5

    aput v2, v4, v0

    const/4 v0, 0x6

    sget-object v2, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v2, v3, v0

    const/4 v0, 0x6

    aput v1, v4, v0

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/W;->m:Landroid/content/res/ColorStateList;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/widget/W;->m:Landroid/content/res/ColorStateList;

    goto/16 :goto_2

    :cond_e
    sget-object v2, Landroid/support/v7/internal/widget/W;->j:[I

    invoke-static {v2, p1}, Landroid/support/v7/internal/widget/W;->a([II)Z

    move-result v2

    if-eqz v2, :cond_f

    new-array v1, v9, [[I

    new-array v2, v9, [I

    sget-object v3, Landroid/support/v7/internal/widget/T;->a:[I

    aput-object v3, v1, v6

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    sget-object v3, Landroid/support/v7/internal/widget/T;->e:[I

    aput-object v3, v1, v7

    const v3, 0x7f010056

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    sget-object v3, Landroid/support/v7/internal/widget/T;->h:[I

    aput-object v3, v1, v8

    invoke-static {v0, v10}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    :cond_f
    move-object v0, v1

    goto/16 :goto_2

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method
