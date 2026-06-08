.class public final Landroid/support/v7/widget/S;
.super Landroid/support/v7/app/b;


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/b;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/S;->b:I

    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/S;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/S;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/b;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/S;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/S;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/S;->b:I

    iget v0, p1, Landroid/support/v7/widget/S;->b:I

    iput v0, p0, Landroid/support/v7/widget/S;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/S;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/S;->b:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/S;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/S;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/S;->rightMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/S;->bottomMargin:I

    return-void
.end method
