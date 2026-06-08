.class public final Landroid/support/v4/view/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/u;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/u;

    invoke-direct {v0}, Landroid/support/v4/view/u;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/u;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/u;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/u;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .locals 3

    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/u;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/u;->a(II)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/u;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/u;->a(Landroid/view/KeyEvent;)V

    return-void
.end method
