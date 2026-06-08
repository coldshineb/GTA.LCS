.class public final Landroid/support/v7/widget/p;
.super Landroid/widget/CheckBox;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/W;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010107

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/p;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010065

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Landroid/support/v7/internal/widget/W;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/p;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/p;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/internal/widget/W;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCompoundPaddingLeft()I
    .locals 3

    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/p;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/p;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/internal/widget/W;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/W;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/widget/p;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method
