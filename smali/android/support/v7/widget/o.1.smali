.class public final Landroid/support/v7/widget/o;
.super Landroid/widget/Button;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/google/android/gms/games/appcontent/g;

.field private c:Lcom/google/android/gms/games/appcontent/g;

.field private d:Landroid/support/v7/internal/widget/W;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/o;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010063

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const v5, 0x1010038

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Landroid/support/v7/internal/widget/W;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/o;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/vending/expansion/downloader/c;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/W;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/o;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    :cond_1
    sget-object v0, Landroid/support/v7/a/a;->L:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->M:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v1, v4, :cond_3

    sget-object v0, Landroid/support/v7/a/a;->aS:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->aU:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/support/v7/a/a;->aU:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/o;->setAllCaps(Z)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    sget-object v0, Landroid/support/v7/a/a;->L:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Landroid/support/v7/a/a;->N:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/o;->setAllCaps(Z)V

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/widget/o;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_6

    invoke-static {p1, v5}, Landroid/support/v7/internal/widget/T;->c(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/support/v7/internal/widget/T;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/o;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {p1, v5}, Landroid/support/v7/internal/widget/T;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/o;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/W;->a(Landroid/view/View;Lcom/google/android/gms/games/appcontent/g;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Lcom/google/android/gms/games/appcontent/g;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/W;->a(Landroid/view/View;Lcom/google/android/gms/games/appcontent/g;)V

    goto :goto_0
.end method

.method private setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Lcom/google/android/gms/games/appcontent/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/appcontent/g;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/g;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/o;->b:Lcom/google/android/gms/games/appcontent/g;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Lcom/google/android/gms/games/appcontent/g;

    iput-object p1, v0, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Lcom/google/android/gms/games/appcontent/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/games/appcontent/g;->d:Z

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/o;->a()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/o;->b:Lcom/google/android/gms/games/appcontent/g;

    goto :goto_0
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/v7/widget/o;->a()V

    return-void
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    iget-object v0, v0, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    iget-object v0, v0, Lcom/google/android/gms/games/appcontent/g;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setAllCaps(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/internal/b/a;

    invoke-virtual {p0}, Landroid/support/v7/widget/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/b/a;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/o;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/o;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/internal/widget/W;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/W;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/o;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/appcontent/g;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/g;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    iput-object p1, v0, Lcom/google/android/gms/games/appcontent/g;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/games/appcontent/g;->d:Z

    invoke-direct {p0}, Landroid/support/v7/widget/o;->a()V

    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/appcontent/g;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/g;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    iput-object p1, v0, Lcom/google/android/gms/games/appcontent/g;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Lcom/google/android/gms/games/appcontent/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/games/appcontent/g;->c:Z

    invoke-direct {p0}, Landroid/support/v7/widget/o;->a()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    sget-object v0, Landroid/support/v7/a/a;->aS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->aU:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/a/a;->aU:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/o;->setAllCaps(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
