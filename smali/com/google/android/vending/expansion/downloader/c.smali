.class public Lcom/google/android/vending/expansion/downloader/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/TypedArray;

.field private c:Landroid/support/v7/internal/widget/W;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/google/android/vending/expansion/downloader/c;
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lcom/google/android/vending/expansion/downloader/c;

    invoke-direct {v1, p0, v0}, Lcom/google/android/vending/expansion/downloader/c;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lcom/google/android/vending/expansion/downloader/c;

    invoke-direct {v1, p0, v0}, Lcom/google/android/vending/expansion/downloader/c;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method

.method public static a(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/l;
    .locals 1

    new-instance v0, Lcom/google/android/vending/expansion/downloader/d;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/d;-><init>(Landroid/os/Messenger;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/vending/expansion/downloader/l;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/expansion/downloader/l;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/vending/expansion/downloader/n;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/vending/expansion/downloader/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/vending/expansion/downloader/e;-><init>(Lcom/google/android/vending/expansion/downloader/l;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/vending/expansion/downloader/m;)Lcom/google/android/vending/expansion/downloader/n;
    .locals 1

    new-instance v0, Lcom/google/android/vending/expansion/downloader/i;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/i;-><init>(Lcom/google/android/vending/expansion/downloader/m;)V

    return-object v0
.end method

.method public static b(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/m;
    .locals 1

    new-instance v0, Lcom/google/android/vending/expansion/downloader/h;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/h;-><init>(Landroid/os/Messenger;)V

    return-object v0
.end method


# virtual methods
.method public a(IF)F
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/W;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public b(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/W;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public c(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public c()Landroid/support/v7/internal/widget/W;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->c:Landroid/support/v7/internal/widget/W;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/widget/W;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/W;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->c:Landroid/support/v7/internal/widget/W;

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->c:Landroid/support/v7/internal/widget/W;

    return-object v0
.end method

.method public c(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public e(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public f(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/c;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method
