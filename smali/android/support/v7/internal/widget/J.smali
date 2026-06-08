.class final Landroid/support/v7/internal/widget/J;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/G;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/G;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/J;->a:Landroid/support/v7/internal/widget/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/G;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/J;-><init>(Landroid/support/v7/internal/widget/G;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/J;->a:Landroid/support/v7/internal/widget/G;

    invoke-static {v0}, Landroid/support/v7/internal/widget/G;->a(Landroid/support/v7/internal/widget/G;)Landroid/support/v7/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/J;->a:Landroid/support/v7/internal/widget/G;

    invoke-static {v0}, Landroid/support/v7/internal/widget/G;->a(Landroid/support/v7/internal/widget/G;)Landroid/support/v7/widget/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/x;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method
