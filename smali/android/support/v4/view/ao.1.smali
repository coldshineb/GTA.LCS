.class final Landroid/support/v4/view/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field private synthetic a:Landroid/support/v4/view/T;


# direct methods
.method constructor <init>(Landroid/support/v4/view/T;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ao;->a:Landroid/support/v4/view/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    new-instance v0, Landroid/support/v4/view/bc;

    invoke-direct {v0, p2}, Landroid/support/v4/view/bc;-><init>(Landroid/view/WindowInsets;)V

    iget-object v1, p0, Landroid/support/v4/view/ao;->a:Landroid/support/v4/view/T;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/T;->a(Landroid/view/View;Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bc;

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->e()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
