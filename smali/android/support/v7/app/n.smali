.class public abstract Landroid/support/v7/app/n;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Dialog;Landroid/support/v7/app/m;)Landroid/support/v7/app/n;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    new-instance v0, Landroid/support/v7/app/r;

    invoke-direct {v0, v1, v2, p1}, Landroid/support/v7/app/r;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V

    :goto_0
    return-object v0

    :cond_0
    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    new-instance v0, Landroid/support/v7/app/q;

    invoke-direct {v0, v1, v2, p1}, Landroid/support/v7/app/q;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {v0, v1, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()V
.end method
