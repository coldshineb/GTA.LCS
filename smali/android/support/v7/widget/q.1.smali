.class public final Landroid/support/v7/widget/q;
.super Landroid/widget/CheckedTextView;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/W;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/q;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const v3, 0x10103c8

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Landroid/support/v7/internal/widget/W;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/q;->a:[I

    invoke-static {v0, p2, v1, v3, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/q;->b:Landroid/support/v7/internal/widget/W;

    :cond_0
    return-void
.end method


# virtual methods
.method public final setCheckMarkDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/q;->b:Landroid/support/v7/internal/widget/W;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/q;->b:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/W;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_0
.end method
