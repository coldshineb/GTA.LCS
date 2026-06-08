.class public final Landroid/support/v7/widget/v;
.super Landroid/widget/Spinner;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/google/android/gms/games/appcontent/g;

.field private c:Lcom/google/android/gms/games/appcontent/g;

.field private d:Landroid/support/v7/internal/widget/W;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/v;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f01006a

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Landroid/support/v7/internal/widget/W;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/v;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/v;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/vending/expansion/downloader/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/W;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/v;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v1, v4}, Lcom/google/android/vending/expansion/downloader/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v4}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/v;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/v;->d:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    :cond_2
    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v3, "mPopup"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/v;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/W;->a(Landroid/view/View;Lcom/google/android/gms/games/appcontent/g;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Lcom/google/android/gms/games/appcontent/g;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/W;->a(Landroid/view/View;Lcom/google/android/gms/games/appcontent/g;)V

    goto :goto_0
.end method

.method private setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Lcom/google/android/gms/games/appcontent/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/appcontent/g;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/g;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/v;->b:Lcom/google/android/gms/games/appcontent/g;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Lcom/google/android/gms/games/appcontent/g;

    iput-object p1, v0, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Lcom/google/android/gms/games/appcontent/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/games/appcontent/g;->d:Z

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/v;->a()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/v;->b:Lcom/google/android/gms/games/appcontent/g;

    goto :goto_0
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/v7/widget/v;->a()V

    return-void
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    iget-object v0, v0, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    iget-object v0, v0, Lcom/google/android/gms/games/appcontent/g;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/v;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/v;->d:Landroid/support/v7/internal/widget/W;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->d:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/W;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/v;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/appcontent/g;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/g;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    iput-object p1, v0, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/games/appcontent/g;->d:Z

    invoke-direct {p0}, Landroid/support/v7/widget/v;->a()V

    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/appcontent/g;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/g;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    iput-object p1, v0, Lcom/google/android/gms/games/appcontent/g;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Lcom/google/android/gms/games/appcontent/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/games/appcontent/g;->c:Z

    invoke-direct {p0}, Landroid/support/v7/widget/v;->a()V

    return-void
.end method
