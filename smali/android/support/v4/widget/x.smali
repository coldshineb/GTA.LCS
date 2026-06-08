.class public final Landroid/support/v4/widget/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/widget/C;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/z;

    invoke-direct {v0}, Landroid/support/v4/widget/z;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/C;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/y;

    invoke-direct {v0}, Landroid/support/v4/widget/y;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/C;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/B;

    invoke-direct {v0}, Landroid/support/v4/widget/B;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/C;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/widget/A;

    invoke-direct {v0}, Landroid/support/v4/widget/A;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/C;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/widget/C;

    invoke-direct {v0}, Landroid/support/v4/widget/C;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/C;

    goto :goto_0
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/C;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/C;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method
