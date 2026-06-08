.class public final Landroid/support/v4/view/aG;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/aI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/aK;

    invoke-direct {v0}, Landroid/support/v4/view/aK;-><init>()V

    sput-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/aJ;

    invoke-direct {v0}, Landroid/support/v4/view/aJ;-><init>()V

    sput-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/aH;

    invoke-direct {v0}, Landroid/support/v4/view/aH;-><init>()V

    sput-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/aI;

    invoke-direct {v0}, Landroid/support/v4/view/aI;-><init>()V

    sput-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/aI;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 7

    sget-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/aI;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/aI;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/aI;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6

    sget-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/aI;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/aI;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aG;->a:Landroid/support/v4/view/aI;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/aI;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method
